/*
 * drivers/cpufreq/cpufreq_bluactive.c
 *
 * Copyright (C) 2010 Google, Inc.
 * Copyright (C) 2014 engstk
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * Author: Mike Chan (mike@android.com)
 * Author: engstk (eng.stk@sapo.pt) Modified for bluactive
 *
 */

#include <linux/cpu.h>
#include <linux/cpumask.h>
#include <linux/cpufreq.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/rwsem.h>
#include <linux/sched.h>
#include <linux/tick.h>
#include <linux/time.h>
#include <linux/timer.h>
#include <linux/workqueue.h>
#include <linux/kthread.h>
#include <linux/slab.h>
#include <linux/kernel_stat.h>
#include <asm/cputime.h>

static int active_count;

struct cpufreq_interactive_cpuinfo {
	struct timer_list cpu_timer;
	struct timer_list cpu_slack_timer;
	spinlock_t load_lock; /* protects the next 4 fields */
	u64 time_in_idle;
	u64 time_in_idle_timestamp;
	u64 cputime_speedadj;
	u64 cputime_speedadj_timestamp;
	struct cpufreq_policy *policy;
	struct cpufreq_frequency_table *freq_table;
	spinlock_t target_freq_lock; /*protects target freq */
	unsigned int target_freq;
	unsigned int floor_freq;
	unsigned int max_freq;
	unsigned int timer_rate;
	int timer_slack_val;
	unsigned int min_sample_time;
	u64 floor_validate_time;
	u64 hispeed_validate_time;
	struct rw_semaphore enable_sem;
	int governor_enabled;
	int prev_load;
};

static DEFINE_PER_CPU(struct cpufreq_interactive_cpuinfo, cpuinfo);

/* realtime thread handles frequency scaling */
static struct task_struct *speedchange_task;
static cpumask_t speedchange_cpumask;
static spinlock_t speedchange_cpumask_lock;
static struct mutex gov_lock;

/* Hi speed to bump to from lo speed when load burst (default max) */
static unsigned int hispeed_freq;

/* Go to hi speed when CPU load at or above this value. */
#define DEFAULT_GO_HISPEED_LOAD 99
static unsigned long go_hispeed_load = DEFAULT_GO_HISPEED_LOAD;

/* Sampling down factor to be applied to min_sample_time at max freq */
static unsigned int sampling_down_factor;

/* Target load.  Lower values result in higher CPU speeds. */
#define DEFAULT_TARGET_LOAD 90
static unsigned int default_target_loads[] = {DEFAULT_TARGET_LOAD};
static spinlock_t target_loads_lock;
static unsigned int *target_loads = default_target_loads;
static int ntarget_loads = ARRAY_SIZE(default_target_loads);

/*
 * The minimum amount of time to spend at a frequency before we can ramp down.
 */
#define DEFAULT_MIN_SAMPLE_TIME (80 * USEC_PER_MSEC)
static unsigned int default_min_sample_time[] = {DEFAULT_MIN_SAMPLE_TIME};
static spinlock_t min_sample_time_lock;
static unsigned int *min_sample_times = default_min_sample_time;
static int nmin_sample_times = ARRAY_SIZE(default_min_sample_time);

/*
 * The sample rate of the timer used to increase frequency
 */
#define DEFAULT_TIMER_RATE (20 * USEC_PER_MSEC)
static unsigned int default_timer_rate[] = { DEFAULT_TIMER_RATE };
static spinlock_t timer_rate_lock;
static unsigned int *timer_rates = default_timer_rate;
static int ntimer_rates = ARRAY_SIZE(default_timer_rate);

/* Busy SDF parameters*/
#define MIN_BUSY_TIME (100 * USEC_PER_MSEC)

/*
 * Wait this long before raising speed above hispeed, by default a single
 * timer interval.
 */
#define DEFAULT_ABOVE_HISPEED_DELAY DEFAULT_TIMER_RATE
static unsigned int default_above_hispeed_delay[] = {
	DEFAULT_ABOVE_HISPEED_DELAY };
static spinlock_t above_hispeed_delay_lock;
static unsigned int *above_hispeed_delay = default_above_hispeed_delay;
static int nabove_hispeed_delay = ARRAY_SIZE(default_above_hispeed_delay);

/*
 * Max additional time to wait in idle, beyond timer_rate, at speeds above
 * minimum before wakeup to reduce speed, or -1 if unnecessary.
 */
#define DEFAULT_TIMER_SLACK (4 * DEFAULT_TIMER_RATE)
static int default_timer_slack_val[] = { DEFAULT_TIMER_SLACK };
static spinlock_t timer_slack_lock;
static int *timer_slack_vals = default_timer_slack_val;
static int ntimer_slack_vals = ARRAY_SIZE(default_timer_slack_val);

static bool io_is_busy;

/*
 * If the max load among other CPUs is higher than up_threshold_any_cpu_load
 * or if the highest frequency among the other CPUs is higher than
 * up_threshold_any_cpu_freq then do not let the frequency to drop below
 * sync_freq
 */
static unsigned int up_threshold_any_cpu_load;
static unsigned int sync_freq;
static unsigned int up_threshold_any_cpu_freq;

static void cpufreq_interactive_timer_resched(
	struct cpufreq_interactive_cpuinfo *pcpu)
{
	unsigned long expires;
	unsigned long flags;

	spin_lock_irqsave(&pcpu->load_lock, flags);
	pcpu->cputime_speedadj = 0;
	pcpu->cputime_speedadj_timestamp = pcpu->time_in_idle_timestamp;
	expires = jiffies + usecs_to_jiffies(pcpu->timer_rate);
	mod_timer_pinned(&pcpu->cpu_timer, expires);

	if (pcpu->timer_slack_val >= 0 && pcpu->target_freq > pcpu->policy->min) {
		expires += usecs_to_jiffies(pcpu->timer_slack_val);
		mod_timer_pinned(&pcpu->cpu_slack_timer, expires);
	}

	spin_unlock_irqrestore(&pcpu->load_lock, flags);
}

/* The caller shall take enable_sem write semaphore to avoid any timer race.
 * The cpu_timer and cpu_slack_timer must be deactivated when calling this
 * function.
 */
static void cpufreq_interactive_timer_start(int cpu)
{
	struct cpufreq_interactive_cpuinfo *pcpu = &per_cpu(cpuinfo, cpu);
	unsigned long expires = jiffies + usecs_to_jiffies(pcpu->timer_rate);
	unsigned long flags;

	pcpu->cpu_timer.expires = expires;
	add_timer_on(&pcpu->cpu_timer, cpu);
	if (pcpu->timer_slack_val >= 0 && pcpu->target_freq > pcpu->policy->min) {
		expires += usecs_to_jiffies(pcpu->timer_slack_val);
		pcpu->cpu_slack_timer.expires = expires;
		add_timer_on(&pcpu->cpu_slack_timer, cpu);
	}

	spin_lock_irqsave(&pcpu->load_lock, flags);
	pcpu->cputime_speedadj = 0;
	pcpu->cputime_speedadj_timestamp = pcpu->time_in_idle_timestamp;
	spin_unlock_irqrestore(&pcpu->load_lock, flags);
}

static unsigned int freq_to_above_hispeed_delay(unsigned int freq)
{
	int i;
	unsigned int ret;
	unsigned long flags;

	spin_lock_irqsave(&above_hispeed_delay_lock, flags);

	for (i = 0; i < nabove_hispeed_delay - 1 &&
			freq >= above_hispeed_delay[i+1]; i += 2)
		;

	ret = above_hispeed_delay[i];
	ret = (ret > (1 * USEC_PER_MSEC)) ? (ret - (1 * USEC_PER_MSEC)) : ret;

	spin_unlock_irqrestore(&above_hispeed_delay_lock, flags);
	return ret;
}


static unsigned int freq_to_timer_rate(unsigned int freq)
{
	int i;
	unsigned int ret;
	unsigned long flags;

	spin_lock_irqsave(&timer_rate_lock, flags);

	for (i = 0; i < ntimer_rates - 1 && freq >= timer_rates[i+1]; i += 2)
		;

	ret = timer_rates[i];
	spin_unlock_irqrestore(&timer_rate_lock, flags);
	return ret;
}

static unsigned int freq_to_timer_slack(unsigned int freq)
{
	int i, ret;
	unsigned long flags;

	spin_lock_irqsave(&timer_slack_lock, flags);

	for (i = 0; i < ntimer_slack_vals - 1 &&
			freq >= timer_slack_vals[i+1]; i += 2)
		;

	ret = timer_slack_vals[i];
	spin_unlock_irqrestore(&timer_slack_lock, flags);
	return ret;
}

static unsigned int freq_to_min_sample_time(unsigned int freq)
{
	int i;
	unsigned int ret;
	unsigned long flags;

	spin_lock_irqsave(&min_sample_time_lock, flags);

	for (i = 0; i < nmin_sample_times - 1 &&
			freq >= min_sample_times[i+1]; i += 2)
		;

	ret = min_sample_times[i];
	spin_unlock_irqrestore(&min_sample_time_lock, flags);
	return ret;
}


static unsigned int calc_freq(struct cpufreq_interactive_cpuinfo *pcpu, 
	unsigned int load)
{
	unsigned int max = pcpu->policy->max;
	unsigned int min = pcpu->policy->min;

	return min + load * (max - min) / 100;
}

static u64 update_load(int cpu)
{
	struct cpufreq_interactive_cpuinfo *pcpu = &per_cpu(cpuinfo, cpu);
	u64 now;
	u64 now_idle;
	unsigned int delta_idle;
	unsigned int delta_time;
	u64 active_time;

	delta_idle = (unsigned int)(&now_idle - pcpu->time_in_idle);
	delta_time = (unsigned int)(&now - pcpu->time_in_idle_timestamp);

	if (delta_time <= delta_idle)
		active_time = 0;
	else
		active_time = delta_time - delta_idle;

	pcpu->cputime_speedadj += active_time * pcpu->policy->cur;

	pcpu->time_in_idle = now_idle;
	pcpu->time_in_idle_timestamp = now;
	return now;
}

static void cpufreq_interactive_timer(unsigned long data)
{
	u64 now;
	unsigned int delta_time;
	u64 cputime_speedadj;
	int cpu_load;
	struct cpufreq_interactive_cpuinfo *pcpu =
		&per_cpu(cpuinfo, data);
	unsigned int new_freq;
	unsigned int loadadjfreq;
	unsigned int index;
	unsigned long flags;
	unsigned long mod_min_sample_time;
	int i, max_load;
	unsigned int max_freq;
	unsigned int boosted_freq;
	struct cpufreq_interactive_cpuinfo *picpu;

	if (!down_read_trylock(&pcpu->enable_sem))
		return;
	if (!pcpu->governor_enabled)
		goto exit;

	spin_lock_irqsave(&pcpu->load_lock, flags);
	now = update_load(data);
	delta_time = (unsigned int)(now - pcpu->cputime_speedadj_timestamp);
	cputime_speedadj = pcpu->cputime_speedadj;
	spin_unlock_irqrestore(&pcpu->load_lock, flags);

	if (WARN_ON_ONCE(!delta_time))
		goto rearm;

	spin_lock_irqsave(&pcpu->target_freq_lock, flags);
	do_div(cputime_speedadj, delta_time);
	loadadjfreq = (unsigned int)cputime_speedadj * 100;
	cpu_load = loadadjfreq / pcpu->target_freq;
	pcpu->prev_load = cpu_load;
	boosted_freq = max(hispeed_freq, pcpu->policy->min);

	if (cpu_load >= go_hispeed_load) {
		if (pcpu->target_freq < boosted_freq) {
			new_freq = boosted_freq;
		} else {
			new_freq = calc_freq(pcpu, cpu_load);
			if (new_freq < boosted_freq)
				new_freq = boosted_freq;
		}
	} else {
		new_freq = calc_freq(pcpu, cpu_load);
		if (new_freq > boosted_freq &&
				pcpu->target_freq < boosted_freq)
			new_freq = boosted_freq;

		if (sync_freq && new_freq < sync_freq) {

			max_load = 0;
			max_freq = 0;

			for_each_online_cpu(i) {
				picpu = &per_cpu(cpuinfo, i);

				if (i == data || picpu->prev_load <
						up_threshold_any_cpu_load)
					continue;

				max_load = max(max_load, picpu->prev_load);
				max_freq = max(max_freq, picpu->target_freq);
			}

			if (max_freq > up_threshold_any_cpu_freq ||
				max_load >= up_threshold_any_cpu_load)
				new_freq = sync_freq;
		}
	}

	pcpu->timer_rate = freq_to_timer_rate(new_freq);
	pcpu->timer_slack_val = freq_to_timer_slack(new_freq);
	pcpu->min_sample_time = freq_to_min_sample_time(new_freq);

	if (pcpu->target_freq >= boosted_freq &&
	    new_freq > pcpu->target_freq &&
	    now - pcpu->hispeed_validate_time <
	    freq_to_above_hispeed_delay(pcpu->target_freq)) {
		spin_unlock_irqrestore(&pcpu->target_freq_lock, flags);
		goto rearm;
	}

	pcpu->hispeed_validate_time = now;

	if (cpufreq_frequency_table_target(pcpu->policy, pcpu->freq_table,
					   new_freq, CPUFREQ_RELATION_H,
					   &index)) {
		spin_unlock_irqrestore(&pcpu->target_freq_lock, flags);
		goto rearm;
	}

	new_freq = pcpu->freq_table[index].frequency;

	/*
	 * Do not scale below floor_freq unless we have been at or above the
	 * floor frequency for the minimum sample time since last validated.
	 */
	if (sampling_down_factor && pcpu->policy->cur == pcpu->policy->max)
		mod_min_sample_time = max(sampling_down_factor,
					  pcpu->min_sample_time);
	else
		mod_min_sample_time = pcpu->min_sample_time;

	if (new_freq < pcpu->floor_freq) {
		if (now - pcpu->floor_validate_time < mod_min_sample_time) {
			spin_unlock_irqrestore(&pcpu->target_freq_lock, flags);
			goto rearm;
		}
	}

	/*
	 * Update the timestamp for checking whether speed has been held at
	 * or above the selected frequency for a minimum of min_sample_time
	 */

	pcpu->floor_freq = new_freq;
	pcpu->floor_validate_time = now;

	if (pcpu->target_freq == new_freq) {
		spin_unlock_irqrestore(&pcpu->target_freq_lock, flags);
		goto rearm_if_notmax;
	}

	pcpu->target_freq = new_freq;
	spin_unlock_irqrestore(&pcpu->target_freq_lock, flags);
	spin_lock_irqsave(&speedchange_cpumask_lock, flags);
	cpumask_set_cpu(data, &speedchange_cpumask);
	spin_unlock_irqrestore(&speedchange_cpumask_lock, flags);
	wake_up_process(speedchange_task);

rearm_if_notmax:
	/*
	 * Already set max speed and don't see a need to change that,
	 * wait until next idle to re-evaluate, don't need timer.
	 */
	if (pcpu->target_freq == pcpu->policy->max)
		goto exit;

rearm:
	if (!timer_pending(&pcpu->cpu_timer))
		cpufreq_interactive_timer_resched(pcpu);

exit:
	up_read(&pcpu->enable_sem);
	return;
}

static void cpufreq_interactive_idle_start(void)
{
	struct cpufreq_interactive_cpuinfo *pcpu =
		&per_cpu(cpuinfo, smp_processor_id());
	int pending;
	u64 now;

	if (!down_read_trylock(&pcpu->enable_sem))
		return;
	if (!pcpu->governor_enabled) {
		up_read(&pcpu->enable_sem);
		return;
	}

	now = ktime_to_us(ktime_get());
	pending = timer_pending(&pcpu->cpu_timer);

	if (pcpu->target_freq >= pcpu->policy->min) {
		/*
		 * Entering idle while not at lowest speed.  On some
		 * platforms this can hold the other CPU(s) at that speed
		 * even though the CPU is idle. Set a timer to re-evaluate
		 * speed so this idle CPU doesn't hold the other CPUs above
		 * min indefinitely.  This should probably be a quirk of
		 * the CPUFreq driver.
		 */
		if (!pending) {
			cpufreq_interactive_timer_resched(pcpu);

			if ((pcpu->policy->cur == pcpu->policy->max) &&
				(now - pcpu->hispeed_validate_time) >
							MIN_BUSY_TIME) {
				pcpu->floor_validate_time = now;
			}

		}
	}

	up_read(&pcpu->enable_sem);
}

static void cpufreq_interactive_idle_end(void)
{
	struct cpufreq_interactive_cpuinfo *pcpu =
		&per_cpu(cpuinfo, smp_processor_id());

	if (!down_read_trylock(&pcpu->enable_sem))
		return;
	if (!pcpu->governor_enabled) {
		up_read(&pcpu->enable_sem);
		return;
	}

	/* Arm the timer for 1-2 ticks later if not already. */
	if (!timer_pending(&pcpu->cpu_timer)) {
		cpufreq_interactive_timer_resched(pcpu);
	} else if (time_after_eq(jiffies, pcpu->cpu_timer.expires)) {
		del_timer(&pcpu->cpu_timer);
		del_timer(&pcpu->cpu_slack_timer);
		cpufreq_interactive_timer(smp_processor_id());
	}

	up_read(&pcpu->enable_sem);
}

static int cpufreq_interactive_speedchange_task(void *data)
{
	unsigned int cpu;
	cpumask_t tmp_mask;
	unsigned long flags;
	struct cpufreq_interactive_cpuinfo *pcpu;

	while (1) {
		set_current_state(TASK_INTERRUPTIBLE);
		spin_lock_irqsave(&speedchange_cpumask_lock, flags);

		if (cpumask_empty(&speedchange_cpumask)) {
			spin_unlock_irqrestore(&speedchange_cpumask_lock,
					       flags);
			schedule();

			if (kthread_should_stop())
				break;

			spin_lock_irqsave(&speedchange_cpumask_lock, flags);
		}

		set_current_state(TASK_RUNNING);
		tmp_mask = speedchange_cpumask;
		cpumask_clear(&speedchange_cpumask);
		spin_unlock_irqrestore(&speedchange_cpumask_lock, flags);

		for_each_cpu(cpu, &tmp_mask) {
			unsigned int j;
			unsigned int max_freq = 0;

			pcpu = &per_cpu(cpuinfo, cpu);
			if (!down_read_trylock(&pcpu->enable_sem))
				continue;
			if (!pcpu->governor_enabled) {
				up_read(&pcpu->enable_sem);
				continue;
			}

			for_each_cpu(j, pcpu->policy->cpus) {
				struct cpufreq_interactive_cpuinfo *pjcpu =
					&per_cpu(cpuinfo, j);

				if (pjcpu->target_freq > max_freq)
					max_freq = pjcpu->target_freq;
			}

			if (max_freq != pcpu->policy->cur)
				__cpufreq_driver_target(pcpu->policy,
							max_freq,
							CPUFREQ_RELATION_H);

			up_read(&pcpu->enable_sem);
		}
	}

	return 0;
}

static int cpufreq_interactive_notifier(
	struct notifier_block *nb, unsigned long val, void *data)
{
	struct cpufreq_freqs *freq = data;
	struct cpufreq_interactive_cpuinfo *pcpu;
	int cpu;
	unsigned long flags;

	if (val == CPUFREQ_POSTCHANGE) {
		pcpu = &per_cpu(cpuinfo, freq->cpu);
		if (!down_read_trylock(&pcpu->enable_sem))
			return 0;
		if (!pcpu->governor_enabled) {
			up_read(&pcpu->enable_sem);
			return 0;
		}

		for_each_cpu(cpu, pcpu->policy->cpus) {
			struct cpufreq_interactive_cpuinfo *pjcpu =
				&per_cpu(cpuinfo, cpu);
			if (cpu != freq->cpu) {
				if (!down_read_trylock(&pjcpu->enable_sem))
					continue;
				if (!pjcpu->governor_enabled) {
					up_read(&pjcpu->enable_sem);
					continue;
				}
			}
			spin_lock_irqsave(&pjcpu->load_lock, flags);
			update_load(cpu);
			spin_unlock_irqrestore(&pjcpu->load_lock, flags);
			if (cpu != freq->cpu)
				up_read(&pjcpu->enable_sem);
		}

		up_read(&pcpu->enable_sem);
	}
	return 0;
}

static struct notifier_block cpufreq_notifier_block = {
	.notifier_call = cpufreq_interactive_notifier,
};

static unsigned int *get_tokenized_data(const char *buf, int *num_tokens)
{
	const char *cp;
	int i;
	int ntokens = 1;
	int *tokenized_data;
	int err = -EINVAL;

	cp = buf;
	while ((cp = strpbrk(cp + 1, " :")))
		ntokens++;

	if (!(ntokens & 0x1))
		goto err;

	tokenized_data = kmalloc(ntokens * sizeof(int), GFP_KERNEL);
	if (!tokenized_data) {
		err = -ENOMEM;
		goto err;
	}

	cp = buf;
	i = 0;
	while (i < ntokens) {
		if (sscanf(cp, "%d", &tokenized_data[i++]) != 1)
			goto err_kfree;

		cp = strpbrk(cp, " :");
		if (!cp)
			break;
		cp++;
	}

	if (i != ntokens)
		goto err_kfree;

	*num_tokens = ntokens;
	return tokenized_data;

err_kfree:
	kfree(tokenized_data);
err:
	return ERR_PTR(err);
}

static ssize_t show_target_loads(
	struct kobject *kobj, struct attribute *attr, char *buf)
{
	int i;
	ssize_t ret = 0;
	unsigned long flags;

	spin_lock_irqsave(&target_loads_lock, flags);

	for (i = 0; i < ntarget_loads; i++)
		ret += sprintf(buf + ret, "%u%s", target_loads[i],
			       i & 0x1 ? ":" : " ");

	sprintf(buf + ret - 1, "\n");
	spin_unlock_irqrestore(&target_loads_lock, flags);
	return ret;
}

static ssize_t store_target_loads(
	struct kobject *kobj, struct attribute *attr, const char *buf,
	size_t count)
{
	int ntokens;
	unsigned int *new_target_loads = NULL;
	unsigned long flags;

	new_target_loads = get_tokenized_data(buf, &ntokens);
	if (IS_ERR(new_target_loads))
		return PTR_RET(new_target_loads);

	spin_lock_irqsave(&target_loads_lock, flags);
	if (target_loads != default_target_loads)
		kfree(target_loads);
	target_loads = new_target_loads;
	ntarget_loads = ntokens;
	spin_unlock_irqrestore(&target_loads_lock, flags);
	return count;
}

static struct global_attr target_loads_attr =
	__ATTR(target_loads, S_IRUGO | S_IWUSR,
		show_target_loads, store_target_loads);

static ssize_t show_above_hispeed_delay(
	struct kobject *kobj, struct attribute *attr, char *buf)
{
	int i;
	ssize_t ret = 0;
	unsigned long flags;

	spin_lock_irqsave(&above_hispeed_delay_lock, flags);

	for (i = 0; i < nabove_hispeed_delay; i++)
		ret += sprintf(buf + ret, "%u%s", above_hispeed_delay[i],
			       i & 0x1 ? ":" : " ");

	sprintf(buf + ret - 1, "\n");
	spin_unlock_irqrestore(&above_hispeed_delay_lock, flags);
	return ret;
}

static ssize_t store_above_hispeed_delay(
	struct kobject *kobj, struct attribute *attr, const char *buf,
	size_t count)
{
	int ntokens;
	unsigned int *new_above_hispeed_delay = NULL;
	unsigned long flags;

	new_above_hispeed_delay = get_tokenized_data(buf, &ntokens);
	if (IS_ERR(new_above_hispeed_delay))
		return PTR_RET(new_above_hispeed_delay);

	spin_lock_irqsave(&above_hispeed_delay_lock, flags);
	if (above_hispeed_delay != default_above_hispeed_delay)
		kfree(above_hispeed_delay);
	above_hispeed_delay = new_above_hispeed_delay;
	nabove_hispeed_delay = ntokens;
	spin_unlock_irqrestore(&above_hispeed_delay_lock, flags);
	return count;

}

static struct global_attr above_hispeed_delay_attr =
	__ATTR(above_hispeed_delay, S_IRUGO | S_IWUSR,
		show_above_hispeed_delay, store_above_hispeed_delay);

static ssize_t show_hispeed_freq(struct kobject *kobj,
				 struct attribute *attr, char *buf)
{
	return sprintf(buf, "%u\n", hispeed_freq);
}

static ssize_t store_hispeed_freq(struct kobject *kobj,
				  struct attribute *attr, const char *buf,
				  size_t count)
{
	int ret;
	long unsigned int val;

	ret = strict_strtoul(buf, 0, &val);
	if (ret < 0)
		return ret;
	hispeed_freq = val;
	return count;
}

static struct global_attr hispeed_freq_attr = __ATTR(hispeed_freq, 0644,
		show_hispeed_freq, store_hispeed_freq);

static ssize_t show_sampling_down_factor(struct kobject *kobj,
				struct attribute *attr, char *buf)
{
	return sprintf(buf, "%u\n", sampling_down_factor);
}

static ssize_t store_sampling_down_factor(struct kobject *kobj,
				struct attribute *attr, const char *buf,
				size_t count)
{
	int ret;
	long unsigned int val;

	ret = strict_strtoul(buf, 0, &val);
	if (ret < 0)
		return ret;
	sampling_down_factor = val;
	return count;
}

static struct global_attr sampling_down_factor_attr =
				__ATTR(sampling_down_factor, 0644,
		show_sampling_down_factor, store_sampling_down_factor);

static ssize_t show_go_hispeed_load(struct kobject *kobj,
				     struct attribute *attr, char *buf)
{
	return sprintf(buf, "%lu\n", go_hispeed_load);
}

static ssize_t store_go_hispeed_load(struct kobject *kobj,
			struct attribute *attr, const char *buf, size_t count)
{
	int ret;
	unsigned long val;

	ret = strict_strtoul(buf, 0, &val);
	if (ret < 0)
		return ret;
	go_hispeed_load = val;
	return count;
}

static struct global_attr go_hispeed_load_attr = __ATTR(go_hispeed_load, 0644,
		show_go_hispeed_load, store_go_hispeed_load);

static ssize_t show_min_sample_time(struct kobject *kobj,
				struct attribute *attr, char *buf)
{
	int i;
	ssize_t ret = 0;
	unsigned long flags;

	spin_lock_irqsave(&min_sample_time_lock, flags);

	for (i = 0; i < nmin_sample_times; i++)
		ret += sprintf(buf + ret, "%u%s", min_sample_times[i],
			       i & 0x1 ? ":" : " ");

	sprintf(buf + ret - 1, "\n");
	spin_unlock_irqrestore(&min_sample_time_lock, flags);
	return ret;
}

static ssize_t store_min_sample_time(struct kobject *kobj,
			struct attribute *attr, const char *buf, size_t count)
{
	int ntokens;
	unsigned int *new_min_sample_time = NULL;
	unsigned long flags;

	new_min_sample_time = get_tokenized_data(buf, &ntokens);
	if (IS_ERR(new_min_sample_time))
		return PTR_RET(new_min_sample_time);

	spin_lock_irqsave(&min_sample_time_lock, flags);
	if (min_sample_times != default_min_sample_time)
		kfree(min_sample_times);
	min_sample_times = new_min_sample_time;
	nmin_sample_times = ntokens;
	spin_unlock_irqrestore(&min_sample_time_lock, flags);
	return count;
}

static struct global_attr min_sample_time_attr = __ATTR(min_sample_time, 0644,
		show_min_sample_time, store_min_sample_time);

static ssize_t show_timer_rate(struct kobject *kobj,
			struct attribute *attr, char *buf)
{
	int i;
	ssize_t ret = 0;
	unsigned long flags;

	spin_lock_irqsave(&timer_rate_lock, flags);

	for (i = 0; i < ntimer_rates; i++)
		ret += sprintf(buf + ret, "%u%s", timer_rates[i],
			       i & 0x1 ? ":" : " ");

	sprintf(buf + ret - 1, "\n");
	spin_unlock_irqrestore(&timer_rate_lock, flags);
	return ret;
}

static ssize_t store_timer_rate(struct kobject *kobj,
			struct attribute *attr, const char *buf, size_t count)
{
	int ntokens;
	unsigned int *new_timer_rate = NULL;
	unsigned long flags;

	new_timer_rate = get_tokenized_data(buf, &ntokens);
	if (IS_ERR(new_timer_rate))
		return PTR_RET(new_timer_rate);

	spin_lock_irqsave(&timer_rate_lock, flags);
	if (timer_rates != default_timer_rate)
		kfree(timer_rates);
	timer_rates = new_timer_rate;
	ntimer_rates = ntokens;
	spin_unlock_irqrestore(&timer_rate_lock, flags);
	return count;
}

static struct global_attr timer_rate_attr = __ATTR(timer_rate, 0644,
		show_timer_rate, store_timer_rate);

static ssize_t show_timer_slack(
	struct kobject *kobj, struct attribute *attr, char *buf)
{
	int i;
	ssize_t ret = 0;
	unsigned long flags;

	spin_lock_irqsave(&timer_slack_lock, flags);

	for (i = 0; i < ntimer_slack_vals; i++)
		ret += sprintf(buf + ret, "%d%s", timer_slack_vals[i],
			       i & 0x1 ? ":" : " ");

	sprintf(buf + ret - 1, "\n");
	spin_unlock_irqrestore(&timer_slack_lock, flags);
	return ret;
}

static ssize_t store_timer_slack(
	struct kobject *kobj, struct attribute *attr, const char *buf,
	size_t count)
{
	int ntokens;
	int *new_timer_slack_val = NULL;
	unsigned long flags;

	new_timer_slack_val = get_tokenized_data(buf, &ntokens);
	if (IS_ERR(new_timer_slack_val))
		return PTR_RET(new_timer_slack_val);

	spin_lock_irqsave(&timer_slack_lock, flags);
	if (timer_slack_vals != default_timer_slack_val)
		kfree(timer_slack_vals);
	timer_slack_vals = new_timer_slack_val;
	ntimer_slack_vals = ntokens;
	spin_unlock_irqrestore(&timer_slack_lock, flags);
	return count;
}

define_one_global_rw(timer_slack);

static ssize_t show_io_is_busy(struct kobject *kobj,
			struct attribute *attr, char *buf)
{
	return sprintf(buf, "%u\n", io_is_busy);
}

static ssize_t store_io_is_busy(struct kobject *kobj,
			struct attribute *attr, const char *buf, size_t count)
{
	int ret;
	unsigned long val;

	ret = kstrtoul(buf, 0, &val);
	if (ret < 0)
		return ret;
	io_is_busy = val;
	return count;
}

static struct global_attr io_is_busy_attr = __ATTR(io_is_busy, 0644,
		show_io_is_busy, store_io_is_busy);

static ssize_t show_sync_freq(struct kobject *kobj,
			struct attribute *attr, char *buf)
{
	return sprintf(buf, "%u\n", sync_freq);
}

static ssize_t store_sync_freq(struct kobject *kobj,
			struct attribute *attr, const char *buf, size_t count)
{
	int ret;
	unsigned long val;

	ret = kstrtoul(buf, 0, &val);
	if (ret < 0)
		return ret;
	sync_freq = val;
	return count;
}

static struct global_attr sync_freq_attr = __ATTR(sync_freq, 0644,
		show_sync_freq, store_sync_freq);

static ssize_t show_up_threshold_any_cpu_load(struct kobject *kobj,
			struct attribute *attr, char *buf)
{
	return snprintf(buf, PAGE_SIZE, "%u\n", up_threshold_any_cpu_load);
}

static ssize_t store_up_threshold_any_cpu_load(struct kobject *kobj,
			struct attribute *attr, const char *buf, size_t count)
{
	int ret;
	unsigned long val;

	ret = kstrtoul(buf, 0, &val);
	if (ret < 0)
		return ret;
	up_threshold_any_cpu_load = val;
	return count;
}

static struct global_attr up_threshold_any_cpu_load_attr =
		__ATTR(up_threshold_any_cpu_load, 0644,
		show_up_threshold_any_cpu_load,
				store_up_threshold_any_cpu_load);

static ssize_t show_up_threshold_any_cpu_freq(struct kobject *kobj,
			struct attribute *attr, char *buf)
{
	return snprintf(buf, PAGE_SIZE, "%u\n", up_threshold_any_cpu_freq);
}

static ssize_t store_up_threshold_any_cpu_freq(struct kobject *kobj,
			struct attribute *attr, const char *buf, size_t count)
{
	int ret;
	unsigned long val;

	ret = kstrtoul(buf, 0, &val);
	if (ret < 0)
		return ret;
	up_threshold_any_cpu_freq = val;
	return count;
}

static struct global_attr up_threshold_any_cpu_freq_attr =
		__ATTR(up_threshold_any_cpu_freq, 0644,
		show_up_threshold_any_cpu_freq,
				store_up_threshold_any_cpu_freq);

static struct attribute *interactive_attributes[] = {
	&target_loads_attr.attr,
	&above_hispeed_delay_attr.attr,
	&hispeed_freq_attr.attr,
	&go_hispeed_load_attr.attr,
	&min_sample_time_attr.attr,
	&timer_rate_attr.attr,
	&timer_slack.attr,
	&io_is_busy_attr.attr,
	&sampling_down_factor_attr.attr,
	&sync_freq_attr.attr,
	&up_threshold_any_cpu_load_attr.attr,
	&up_threshold_any_cpu_freq_attr.attr,
	NULL,
};

static struct attribute_group interactive_attr_group = {
	.attrs = interactive_attributes,
	.name = "bluactive",
};

static int cpufreq_interactive_idle_notifier(struct notifier_block *nb,
					     unsigned long val,
					     void *data)
{
	switch (val) {
	case IDLE_START:
		cpufreq_interactive_idle_start();
		break;
	case IDLE_END:
		cpufreq_interactive_idle_end();
		break;
	}

	return 0;
}

static struct notifier_block cpufreq_interactive_idle_nb = {
	.notifier_call = cpufreq_interactive_idle_notifier,
};

static int cpufreq_governor_bluactive(struct cpufreq_policy *policy,
		unsigned int event)
{
	int rc;
	unsigned int j;
	struct cpufreq_interactive_cpuinfo *pcpu;
	struct cpufreq_frequency_table *freq_table;
	unsigned long flags;

	switch (event) {
	case CPUFREQ_GOV_START:
		mutex_lock(&gov_lock);

		freq_table =
			cpufreq_frequency_get_table(policy->cpu);
		if (!hispeed_freq)
			hispeed_freq = policy->max;

		for_each_cpu(j, policy->cpus) {
			pcpu = &per_cpu(cpuinfo, j);
			pcpu->policy = policy;
			pcpu->target_freq = policy->cur;
			pcpu->freq_table = freq_table;
			pcpu->floor_freq = pcpu->target_freq;
			pcpu->floor_validate_time =
				ktime_to_us(ktime_get());
			pcpu->hispeed_validate_time =
				pcpu->floor_validate_time;
			pcpu->max_freq = policy->max;
			down_write(&pcpu->enable_sem);
			del_timer_sync(&pcpu->cpu_timer);
			del_timer_sync(&pcpu->cpu_slack_timer);
			cpufreq_interactive_timer_start(j);
			pcpu->governor_enabled = 1;
			up_write(&pcpu->enable_sem);
		}

		/*
		 * Do not register the idle hook and create sysfs
		 * entries if we have already done so.
		 */
		if (++active_count > 1) {
			mutex_unlock(&gov_lock);
			return 0;
		}

		rc = sysfs_create_group(cpufreq_global_kobject,
				&interactive_attr_group);
		if (rc) {
			mutex_unlock(&gov_lock);
			return rc;
		}

		idle_notifier_register(&cpufreq_interactive_idle_nb);
		cpufreq_register_notifier(
			&cpufreq_notifier_block, CPUFREQ_TRANSITION_NOTIFIER);
		mutex_unlock(&gov_lock);
		break;

	case CPUFREQ_GOV_STOP:
		mutex_lock(&gov_lock);
		for_each_cpu(j, policy->cpus) {
			pcpu = &per_cpu(cpuinfo, j);
			down_write(&pcpu->enable_sem);
			pcpu->governor_enabled = 0;
			pcpu->target_freq = 0;
			del_timer_sync(&pcpu->cpu_timer);
			del_timer_sync(&pcpu->cpu_slack_timer);
			up_write(&pcpu->enable_sem);
		}

		if (--active_count > 0) {
			mutex_unlock(&gov_lock);
			return 0;
		}

		cpufreq_unregister_notifier(
			&cpufreq_notifier_block, CPUFREQ_TRANSITION_NOTIFIER);
		idle_notifier_unregister(&cpufreq_interactive_idle_nb);
		sysfs_remove_group(cpufreq_global_kobject,
				&interactive_attr_group);
		mutex_unlock(&gov_lock);

		break;

	case CPUFREQ_GOV_LIMITS:
		if (policy->max < policy->cur)
			__cpufreq_driver_target(policy,
					policy->max, CPUFREQ_RELATION_H);
		else if (policy->min > policy->cur)
			__cpufreq_driver_target(policy,
					policy->min, CPUFREQ_RELATION_L);
		for_each_cpu(j, policy->cpus) {
			pcpu = &per_cpu(cpuinfo, j);

			down_read(&pcpu->enable_sem);
			if (pcpu->governor_enabled == 0) {
				up_read(&pcpu->enable_sem);
				continue;
			}

			spin_lock_irqsave(&pcpu->target_freq_lock, flags);
			if (policy->max < pcpu->target_freq)
				pcpu->target_freq = policy->max;
			else if (policy->min > pcpu->target_freq) {
				pcpu->target_freq = policy->min;
				pcpu->floor_freq = policy->min;
				pcpu->floor_validate_time = ktime_to_us(ktime_get());
			}

			spin_unlock_irqrestore(&pcpu->target_freq_lock, flags);
			up_read(&pcpu->enable_sem);

			/* Reschedule timer only if policy->max is raised.
			 * Delete the timers, else the timer callback may
			 * return without re-arm the timer when failed
			 * acquire the semaphore. This race may cause timer
			 * stopped unexpectedly.
			 */

			if (policy->max > pcpu->max_freq) {
				down_write(&pcpu->enable_sem);
				del_timer_sync(&pcpu->cpu_timer);
				del_timer_sync(&pcpu->cpu_slack_timer);
				cpufreq_interactive_timer_start(j);
				up_write(&pcpu->enable_sem);
			}

			pcpu->max_freq = policy->max;
		}
		break;
	}
	return 0;
}

#ifndef CONFIG_CPU_FREQ_DEFAULT_GOV_BLUACTIVE
static
#endif
struct cpufreq_governor cpufreq_gov_bluactive = {
	.name = "bluactive",
	.governor = cpufreq_governor_bluactive,
	.max_transition_latency = 10000000,
	.owner = THIS_MODULE,
};

static void cpufreq_interactive_nop_timer(unsigned long data)
{
}

static int __init cpufreq_bluactive_init(void)
{
	unsigned int i;
	struct cpufreq_interactive_cpuinfo *pcpu;

	/* Initalize per-cpu timers */
	for_each_possible_cpu(i) {
		pcpu = &per_cpu(cpuinfo, i);
		init_timer_deferrable(&pcpu->cpu_timer);
		pcpu->cpu_timer.function = cpufreq_interactive_timer;
		pcpu->cpu_timer.data = i;
		init_timer(&pcpu->cpu_slack_timer);
		pcpu->cpu_slack_timer.function = cpufreq_interactive_nop_timer;
		spin_lock_init(&pcpu->load_lock);
		spin_lock_init(&pcpu->target_freq_lock);
		init_rwsem(&pcpu->enable_sem);
	}

	spin_lock_init(&target_loads_lock);
	spin_lock_init(&min_sample_time_lock);
	spin_lock_init(&timer_rate_lock);
	spin_lock_init(&timer_slack_lock);
	spin_lock_init(&speedchange_cpumask_lock);
	spin_lock_init(&above_hispeed_delay_lock);
	mutex_init(&gov_lock);
	speedchange_task =
		kthread_create(cpufreq_interactive_speedchange_task, NULL,
			       "cfbluactive");
	if (IS_ERR(speedchange_task))
		return PTR_ERR(speedchange_task);

	//sched_setscheduler_nocheck(speedchange_task, SCHED_FIFO, &param);
	get_task_struct(speedchange_task);

	/* NB: wake up so the thread does not look hung to the freezer */
	wake_up_process(speedchange_task);

	return cpufreq_register_governor(&cpufreq_gov_bluactive);
}

#ifdef CONFIG_CPU_FREQ_DEFAULT_GOV_BLUACTIVE
fs_initcall(cpufreq_bluactive_init);
#else
module_init(cpufreq_bluactive_init);
#endif

static void __exit cpufreq_interactive_exit(void)
{
	cpufreq_unregister_governor(&cpufreq_gov_bluactive);
	kthread_stop(speedchange_task);
	put_task_struct(speedchange_task);
}

module_exit(cpufreq_interactive_exit);

MODULE_AUTHOR("Mike Chan <mike@android.com>");
MODULE_AUTHOR("engstk <eng.stk@sapo.pt>");
MODULE_DESCRIPTION("'cpufreq_bluactive' - A cpufreq governor for "
	"Latency sensitive workloads based on Google, CAF, CM, myfluxi and franciscofranco Interactive");
MODULE_LICENSE("GPL");

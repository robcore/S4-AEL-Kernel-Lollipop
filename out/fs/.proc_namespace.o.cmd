cmd_fs/proc_namespace.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/scripts/gcc-wrapper.py /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-gcc -Wp,-MD,fs/.proc_namespace.o.d  -nostdinc -isystem /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/../lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/include -include /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kconfig.h  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/fs -Ifs -D__KERNEL__ -mlittle-endian   -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Wno-unused-value -Wno-format-security -Wno-sizeof-pointer-memaccess -Wno-aggressive-loop-optimizations -Werror-implicit-function-declaration -Wno-uninitialized -Wno-format-security -Wno-array-bounds -Wno-unused-variable -Wno-unused-function -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -Wno-declaration-after-statement -O3 -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -fno-conserve-stack -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -msoft-float -Uarm -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO   -munaligned-access -mfpu=neon-vfpv4 -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(proc_namespace)"  -D"KBUILD_MODNAME=KBUILD_STR(proc_namespace)" -c -o fs/.tmp_proc_namespace.o /media/root/robcore/android/S4-AEL-Kernel-Lollipop/fs/proc_namespace.c

source_fs/proc_namespace.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/fs/proc_namespace.c

deps_fs/proc_namespace.o := \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mnt_namespace.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/nsproxy.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/spinlock.h \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/typecheck.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitsperlong.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/posix_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/stddef.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/compiler-gcc4.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/posix_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/posix_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bitops.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/bitops.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/irqflags.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
    $(wildcard include/config/arm/thumb.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/hwcap.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/non-atomic.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/fls64.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/sched.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/hweight.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/arch_hweight.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/const_hweight.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/lock.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/le.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/byteorder.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/byteorder/little_endian.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/swab.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/swab.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/byteorder/generic.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/arm/thumbee.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/domain.h \
    $(wildcard include/config/verify/permission/fault.h) \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
    $(wildcard include/config/emulate/domain/manager/v7.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/linkage.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/linkage.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/const.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/lge/crash/handler.h) \
    $(wildcard include/config/cpu/cp15/mmu.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sysinfo.h \
  /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include/stdarg.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/printk.h \
    $(wildcard include/config/sec/ssr/dump.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dynamic_debug.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/div64.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/compiler.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/stringify.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bottom_half.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/spinlock_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/spinlock_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rwlock_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/spinlock.h \
    $(wildcard include/config/msm/krait/wfe/fixup.h) \
    $(wildcard include/config/arm/ticket/locks.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/hw_breakpoint.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rwlock.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/atomic.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/cmpxchg-local.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/atomic-long.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sched.h \
    $(wildcard include/config/intelli/hotplug.h) \
    $(wildcard include/config/msm/run/queue/stats/be/conservative.h) \
    $(wildcard include/config/runtime/compcache.h) \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/samp/hotness.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/cfs/bandwidth.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/android/bg/scan/mem.h) \
    $(wildcard include/config/mm/owner.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/param.h \
    $(wildcard include/config/hz.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/capability.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/timex.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/seqlock.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/math64.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/param.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/timex.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/timex.h \
    $(wildcard include/config/have/arch/has/current/timer.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/jiffies.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rbtree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cpumask.h \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bitmap.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/string.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bug.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/errno.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/errno-base.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/nodemask.h \
    $(wildcard include/config/highmem.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/auxvec.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/prio_tree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rwsem-spinlock.h \
    $(wildcard include/config/sec/forkhang/debug.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/completion.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/wait.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/current.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v3.h) \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/memory/hotplug/sparse.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/glue.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/pgtable-2level-types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
  arch/arm/include/generated/asm/sizes.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/sizes.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/memory.h \
    $(wildcard include/config/have/end/mem.h) \
    $(wildcard include/config/end/mem.h) \
    $(wildcard include/config/arch/msm7x30.h) \
    $(wildcard include/config/sparsemem.h) \
    $(wildcard include/config/vmsplit/3g.h) \
    $(wildcard include/config/arch/msm/arm11.h) \
    $(wildcard include/config/arch/msm/cortex/a5.h) \
    $(wildcard include/config/cache/l2x0.h) \
    $(wildcard include/config/arch/msm8x60.h) \
    $(wildcard include/config/arch/msm8960.h) \
    $(wildcard include/config/dont/map/hole/after/membank0.h) \
    $(wildcard include/config/arch/msm/scorpion.h) \
    $(wildcard include/config/arch/msm/krait.h) \
    $(wildcard include/config/arch/msm7x27.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/getorder.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  arch/arm/include/generated/asm/cputime.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/cputime.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/smp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sem.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ipc.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/ipcbuf.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/ipcbuf.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/sembuf.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/preempt/rt.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rcutree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/signal.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/signal.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/signal-defs.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/siginfo.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pid.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pfn.h \
  arch/arm/include/generated/asm/percpu.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/percpu.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/generated/bounds.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/notifier.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/srcu.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/sparsemem.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/topology.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/proportions.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/percpu_counter.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rculist.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/resource.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/timerqueue.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/latencytop.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/user/ns.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/key.h \
    $(wildcard include/config/sysctl.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sysctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/aio.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/aio_abi.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/uio.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/security.h \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/security/network.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/securityfs.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/slab.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/gfp.h \
    $(wildcard include/config/pm/sleep.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/slub/debug.h) \
    $(wildcard include/config/sysfs.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kobject.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sysfs.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kobject_ns.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kref.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/err.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/fs_struct.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/path.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/fs/proc/internal.h \
    $(wildcard include/config/proc/sysctl.h) \
    $(wildcard include/config/net.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/proc_fs.h \
    $(wildcard include/config/proc/devicetree.h) \
    $(wildcard include/config/proc/kcore.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/limits.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/ioctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/blk_types.h \
    $(wildcard include/config/blk/dev/integrity.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kdev_t.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dcache.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rculist_bl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/list_bl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bit_spinlock.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/stat.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/stat.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/radix-tree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/semaphore.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/fiemap.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/shrinker.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/migrate_mode.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_xfs.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_v1.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_v2.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_qtree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/nfs_fs_i.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/fcntl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/fcntl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/fcntl.h \
    $(wildcard include/config/scfs/lower/pagecache/invalidation.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/magic.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/fs/pnode.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/fs/mount.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mount.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/seq_file.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/poll.h \
  arch/arm/include/generated/asm/poll.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/poll.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/uaccess.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/fs/internal.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/lglock.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cpu.h \
    $(wildcard include/config/arch/has/cpu/autoprobe.h) \
    $(wildcard include/config/arch/cpu/probe/release.h) \
    $(wildcard include/config/pm/sleep/smp.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/node.h \
    $(wildcard include/config/hugetlbfs.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ioport.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/klist.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pm.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pm_wakeup.h \

fs/proc_namespace.o: $(deps_fs/proc_namespace.o)

$(deps_fs/proc_namespace.o):

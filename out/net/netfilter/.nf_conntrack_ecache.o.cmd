cmd_net/netfilter/nf_conntrack_ecache.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/scripts/gcc-wrapper.py /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-gcc -Wp,-MD,net/netfilter/.nf_conntrack_ecache.o.d  -nostdinc -isystem /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/../lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/include -include /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kconfig.h  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/net/netfilter -Inet/netfilter -D__KERNEL__ -mlittle-endian   -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Wno-unused-value -Wno-format-security -Wno-sizeof-pointer-memaccess -Wno-aggressive-loop-optimizations -Werror-implicit-function-declaration -Wno-uninitialized -Wno-format-security -Wno-array-bounds -Wno-unused-variable -Wno-unused-function -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -Wno-declaration-after-statement -O3 -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -fno-conserve-stack -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -msoft-float -Uarm -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO   -munaligned-access -mfpu=neon-vfpv4 -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(nf_conntrack_ecache)"  -D"KBUILD_MODNAME=KBUILD_STR(nf_conntrack)" -c -o net/netfilter/.tmp_nf_conntrack_ecache.o /media/root/robcore/android/S4-AEL-Kernel-Lollipop/net/netfilter/nf_conntrack_ecache.c

source_net/netfilter/nf_conntrack_ecache.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/net/netfilter/nf_conntrack_ecache.c

deps_net/netfilter/nf_conntrack_ecache.o := \
    $(wildcard include/config/sysctl.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter.h \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/nf/nat/needed.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/nf/conntrack.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/init.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/hotplug.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/skbuff.h \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/nf/defrag/ipv4.h) \
    $(wildcard include/config/nf/defrag/ipv6.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/linkage.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/linkage.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bitops.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/typecheck.h \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/printk.h \
    $(wildcard include/config/sec/ssr/dump.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kmemcheck.h \
    $(wildcard include/config/kmemcheck.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/cpumask/offstack.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/auxvec.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/const.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/thread_info.h \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/prio_tree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rbtree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rwsem-spinlock.h \
    $(wildcard include/config/sec/forkhang/debug.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/completion.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/wait.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/current.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cpumask.h \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bitmap.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/string.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bug.h \
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
    $(wildcard include/config/highmem.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/seqlock.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/math64.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/net.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/socket.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/socket.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/sockios.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sockios.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/uio.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/random.h \
    $(wildcard include/config/arch/random.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/ioctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/irqnr.h \
    $(wildcard include/config/generic/hardirqs.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/fcntl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/fcntl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/fcntl.h \
    $(wildcard include/config/scfs/lower/pagecache/invalidation.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/preempt/rt.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rcutree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/textsearch.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/err.h \
  arch/arm/include/generated/asm/errno.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/errno.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/errno-base.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/slab.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/gfp.h \
    $(wildcard include/config/cma.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/cgroup/mem/res/ctlr.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/nodemask.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/generated/bounds.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/notifier.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/errno.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/srcu.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/sparsemem.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/smp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pfn.h \
  arch/arm/include/generated/asm/percpu.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/percpu.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/topology.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/slub/debug.h) \
    $(wildcard include/config/sysfs.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/jiffies.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/timex.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/param.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/param.h \
    $(wildcard include/config/hz.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/timex.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/timex.h \
    $(wildcard include/config/have/arch/has/current/timer.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kobject.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sysfs.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kobject_ns.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kref.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/checksum.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/uaccess.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/checksum.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/in6.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dmaengine.h \
    $(wildcard include/config/async/tx/enable/channel/switch.h) \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/async/tx/dma.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/mm.h \
    $(wildcard include/config/fix/movable/zone.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/use/user/accessible/timers.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/range.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bit_spinlock.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/shrinker.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/proc-fns.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm610.h) \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm710.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/v7.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/pgtable-nopud.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/pgtable-hwdef.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/pgtable-2level.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/pgtable.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/s390.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/huge_mm.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/vm_event_item.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/scatterlist.h \
    $(wildcard include/config/arm/has/sg/chain.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/msm_rtb.h \
    $(wildcard include/config/msm/rtb.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/io.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/timerqueue.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dma-attrs.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dma-direction.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/dma-mapping.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/dma-mapping-common.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netdev_features.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/if.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/hdlc/ioctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/in.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sysctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/flow.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/proc_fs.h \
    $(wildcard include/config/proc/devicetree.h) \
    $(wildcard include/config/proc/kcore.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
    $(wildcard include/config/migration.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/limits.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/blk_types.h \
    $(wildcard include/config/blk/dev/integrity.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kdev_t.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dcache.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rculist.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rculist_bl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/list_bl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/path.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/stat.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/stat.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/radix-tree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pid.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/capability.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/semaphore.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/fiemap.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/migrate_mode.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/percpu_counter.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_xfs.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_v1.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_v2.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dqblk_qtree.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/nfs_fs_i.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/magic.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/vmalloc.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/wlan.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/tr.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/rps.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/xps.h) \
    $(wildcard include/config/bql.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/libfcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/net/ns.h) \
    $(wildcard include/config/netprio/cgroup.h) \
    $(wildcard include/config/net/dsa/tag/dsa.h) \
    $(wildcard include/config/net/dsa/tag/trailer.h) \
    $(wildcard include/config/netpoll/trap.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/if_ether.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/if_packet.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/if_link.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netlink.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/export.h \
    $(wildcard include/config/symbol/prefix.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/pm_qos.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/miscdevice.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/major.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/delay.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/delay.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/dynamic_queue_limits.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ethtool.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/compat.h \
    $(wildcard include/config/arch/want/old/compat/ipc.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/net_namespace.h \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/wext/core.h) \
    $(wildcard include/config/net.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/core.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/snmp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/snmp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/u64_stats_sync.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/unix.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/packet.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/inet_frag.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/mroute/multiple/tables.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/dst_ops.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/dccp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/conntrack.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/list_nulls.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netns/xfrm.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/xfrm.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/seq_file_net.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/seq_file.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/dsa.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netprio_cgroup.h \
    $(wildcard include/config/cgroups.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cgroup.h \
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
    $(wildcard include/config/samp/hotness.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/cfs/bandwidth.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/android/bg/scan/mem.h) \
  arch/arm/include/generated/asm/cputime.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/cputime.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sem.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ipc.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/ipcbuf.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/ipcbuf.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/sembuf.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/signal.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/signal.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/signal-defs.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/siginfo.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/proportions.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/resource.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/latencytop.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/user/ns.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/key.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/aio.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/aio_abi.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cgroupstats.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/taskstats.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/prio_heap.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/idr.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/debug.h) \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/net/cls/cgroup.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/bfqio.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/hardirq.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/hardirq.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/irqs.h \
    $(wildcard include/config/arch/apq8064.h) \
    $(wildcard include/config/arch/msm8930.h) \
    $(wildcard include/config/mfd/max77693.h) \
    $(wildcard include/config/pci/msi.h) \
    $(wildcard include/config/arch/msm8974.h) \
    $(wildcard include/config/arch/msm9615.h) \
    $(wildcard include/config/arch/msm9625.h) \
    $(wildcard include/config/arch/msm8226.h) \
    $(wildcard include/config/arch/qsd8x50.h) \
    $(wildcard include/config/arch/msm7x01a.h) \
    $(wildcard include/config/arch/msm7x25.h) \
    $(wildcard include/config/arch/fsm9xxx.h) \
    $(wildcard include/config/msm/pcie.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/irqs-8625.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/irqs-8960.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/irqs-8064.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/irq_cpustat.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/static_key.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/jump_label.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack.h \
    $(wildcard include/config/nf/conntrack/ftp.h) \
    $(wildcard include/config/nf/conntrack/pptp.h) \
    $(wildcard include/config/nf/conntrack/h323.h) \
    $(wildcard include/config/nf/conntrack/sane.h) \
    $(wildcard include/config/nf/conntrack/sip.h) \
    $(wildcard include/config/netfilter/debug.h) \
    $(wildcard include/config/nf/conntrack/mark.h) \
    $(wildcard include/config/nf/conntrack/secmark.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_common.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_tcp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_dccp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack_tuple.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/x_tables.h \
    $(wildcard include/config/arm.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter_ipv4.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_tuple_common.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_sctp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_proto_gre.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/ipv6/nf_conntrack_icmpv6.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_ftp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_pptp.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_h323.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_h323_asn1.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_h323_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_sane.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/netfilter/nf_conntrack_sip.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/ipv4/nf_conntrack_ipv4.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/ipv6/nf_conntrack_ipv6.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack_core.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack_l3proto.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netlink.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack_l4proto.h \
    $(wildcard include/config/nf/ct/netlink/timeout.h) \
    $(wildcard include/config/nf/conntrack/proc/compat.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack_ecache.h \
    $(wildcard include/config/nf/conntrack/events.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack_expect.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/net/netfilter/nf_conntrack_extend.h \
    $(wildcard include/config/nf/nat.h) \
    $(wildcard include/config/nf/conntrack/zones.h) \
    $(wildcard include/config/nf/conntrack/timestamp.h) \
    $(wildcard include/config/nf/conntrack/timeout.h) \

net/netfilter/nf_conntrack_ecache.o: $(deps_net/netfilter/nf_conntrack_ecache.o)

$(deps_net/netfilter/nf_conntrack_ecache.o):

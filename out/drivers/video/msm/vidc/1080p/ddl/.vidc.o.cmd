cmd_drivers/video/msm/vidc/1080p/ddl/vidc.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/scripts/gcc-wrapper.py /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-gcc -Wp,-MD,drivers/video/msm/vidc/1080p/ddl/.vidc.o.d  -nostdinc -isystem /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/../lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/include -include /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kconfig.h  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc -Idrivers/video/msm/vidc -D__KERNEL__ -mlittle-endian   -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Wno-unused-value -Wno-format-security -Wno-sizeof-pointer-memaccess -Wno-aggressive-loop-optimizations -Werror-implicit-function-declaration -Wno-uninitialized -Wno-format-security -Wno-array-bounds -Wno-unused-variable -Wno-unused-function -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -Wno-declaration-after-statement -O3 -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -fno-conserve-stack -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -msoft-float -Uarm -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/1080p/ddl -Idrivers/video/msm/vidc/1080p/ddl  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/1080p/resource_tracker -Idrivers/video/msm/vidc/1080p/resource_tracker  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/common/dec -Idrivers/video/msm/vidc/common/dec  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/common/enc -Idrivers/video/msm/vidc/common/enc  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/common/vcd -Idrivers/video/msm/vidc/common/vcd  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/common/init -Idrivers/video/msm/vidc/common/init   -munaligned-access -mfpu=neon-vfpv4 -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(vidc)"  -D"KBUILD_MODNAME=KBUILD_STR(vidc)" -c -o drivers/video/msm/vidc/1080p/ddl/.tmp_vidc.o /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/1080p/ddl/vidc.c

source_drivers/video/msm/vidc/1080p/ddl/vidc.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/1080p/ddl/vidc.c

deps_drivers/video/msm/vidc/1080p/ddl/vidc.o := \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/1080p/ddl/vidc.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/1080p/ddl/vidc_hwio_reg.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/io.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/has/ioport.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/io.h \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include/stdarg.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/string.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/byteorder.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/byteorder/little_endian.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/swab.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/swab.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/byteorder/generic.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/const.h \
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
    $(wildcard include/config/lge/crash/handler.h) \
    $(wildcard include/config/dont/map/hole/after/membank0.h) \
    $(wildcard include/config/arch/msm/scorpion.h) \
    $(wildcard include/config/arch/msm/krait.h) \
    $(wildcard include/config/arch/msm7x27.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/msm_rtb.h \
    $(wildcard include/config/msm/rtb.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/smp.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/io.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v3.h) \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/arm/lpae.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/memory/hotplug/sparse.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/glue.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/pgtable-2level-types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/getorder.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bitops.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/bitops.h \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/delay.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/cpu/cp15/mmu.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/sysinfo.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/linkage.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/linkage.h \
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
    $(wildcard include/config/debug/bugverbose.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/delay.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/param.h \
    $(wildcard include/config/hz.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/system.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/cmpxchg-local.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/exec.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/switch_to.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/system_info.h \
    $(wildcard include/config/sec/debug/subsys.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/system_misc.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/video/msm/vidc/1080p/ddl/vidc_hwio.h \

drivers/video/msm/vidc/1080p/ddl/vidc.o: $(deps_drivers/video/msm/vidc/1080p/ddl/vidc.o)

$(deps_drivers/video/msm/vidc/1080p/ddl/vidc.o):

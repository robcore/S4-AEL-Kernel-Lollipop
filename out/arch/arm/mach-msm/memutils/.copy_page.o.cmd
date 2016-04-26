cmd_arch/arm/mach-msm/memutils/copy_page.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/scripts/gcc-wrapper.py /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-gcc -Wp,-MD,arch/arm/mach-msm/memutils/.copy_page.o.d  -nostdinc -isystem /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/../lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/include -include /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kconfig.h  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/memutils -Iarch/arm/mach-msm/memutils -D__KERNEL__ -mlittle-endian   -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Wno-unused-value -Wno-format-security -Wno-sizeof-pointer-memaccess -Wno-aggressive-loop-optimizations -Werror-implicit-function-declaration -Wno-uninitialized -Wno-format-security -Wno-array-bounds -Wno-unused-variable -Wno-unused-function -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -Wno-declaration-after-statement -O3 -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -fno-conserve-stack -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -msoft-float -Uarm -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO   -munaligned-access -mfpu=neon-vfpv4 -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(copy_page)"  -D"KBUILD_MODNAME=KBUILD_STR(copy_page)" -c -o arch/arm/mach-msm/memutils/.tmp_copy_page.o /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/memutils/copy_page.c

source_arch/arm/mach-msm/memutils/copy_page.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/memutils/copy_page.c

deps_arch/arm/mach-msm/memutils/copy_page.o := \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/posix_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/posix_types.h \
  /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include/stdarg.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/string.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/page.h \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/cpu/copy/v3.h) \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/arm/lpae.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/memory/hotplug/sparse.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/glue.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/pgtable-2level-types.h \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/getorder.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
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

arch/arm/mach-msm/memutils/copy_page.o: $(deps_arch/arm/mach-msm/memutils/copy_page.o)

$(deps_arch/arm/mach-msm/memutils/copy_page.o):

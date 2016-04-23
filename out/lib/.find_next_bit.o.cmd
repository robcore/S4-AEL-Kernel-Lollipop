cmd_lib/find_next_bit.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/scripts/gcc-wrapper.py /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-gcc -Wp,-MD,lib/.find_next_bit.o.d  -nostdinc -isystem /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/../lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/include -include /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kconfig.h  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/lib -Ilib -D__KERNEL__ -mlittle-endian   -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Wno-unused-value -Wno-format-security -Wno-sizeof-pointer-memaccess -Wno-aggressive-loop-optimizations -Werror-implicit-function-declaration -Wno-uninitialized -Wno-format-security -Wno-array-bounds -Wno-unused-variable -Wno-unused-function -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -Wno-declaration-after-statement -O3 -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -fno-conserve-stack -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -msoft-float -Uarm -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO   -munaligned-access -mfpu=neon-vfpv4 -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(find_next_bit)"  -D"KBUILD_MODNAME=KBUILD_STR(find_next_bit)" -c -o lib/.tmp_find_next_bit.o /media/root/robcore/android/S4-AEL-Kernel-Lollipop/lib/find_next_bit.c

source_lib/find_next_bit.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/lib/find_next_bit.c

deps_lib/find_next_bit.o := \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/bitops.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/stddef.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/posix_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/posix_types.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/posix_types.h \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/export.h \
    $(wildcard include/config/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \

lib/find_next_bit.o: $(deps_lib/find_next_bit.o)

$(deps_lib/find_next_bit.o):

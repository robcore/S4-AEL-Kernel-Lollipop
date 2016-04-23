cmd_drivers/gpu/ion/msm/ion_cp_common.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/scripts/gcc-wrapper.py /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-gcc -Wp,-MD,drivers/gpu/ion/msm/.ion_cp_common.o.d  -nostdinc -isystem /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/../lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/include -include /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kconfig.h  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/gpu/ion/msm -Idrivers/gpu/ion/msm -D__KERNEL__ -mlittle-endian   -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Wno-unused-value -Wno-format-security -Wno-sizeof-pointer-memaccess -Wno-aggressive-loop-optimizations -Werror-implicit-function-declaration -Wno-uninitialized -Wno-format-security -Wno-array-bounds -Wno-unused-variable -Wno-unused-function -fno-delete-null-pointer-checks -Wno-maybe-uninitialized -Wno-declaration-after-statement -O3 -marm -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -fno-conserve-stack -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -msoft-float -Uarm -Wframe-larger-than=2048 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO   -munaligned-access -mfpu=neon-vfpv4 -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(ion_cp_common)"  -D"KBUILD_MODNAME=KBUILD_STR(ion_cp_common)" -c -o drivers/gpu/ion/msm/.tmp_ion_cp_common.o /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/gpu/ion/msm/ion_cp_common.c

source_drivers/gpu/ion/msm/ion_cp_common.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/gpu/ion/msm/ion_cp_common.c

deps_drivers/gpu/ion/msm/ion_cp_common.o := \
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
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/scm.h \
    $(wildcard include/config/msm/scm.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/drivers/gpu/ion/msm/ion_cp_common.h \
    $(wildcard include/config/ion/msm.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/errno-base.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/msm_ion.h \
    $(wildcard include/config/ion.h) \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ion.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/ioctl.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/err.h \
  arch/arm/include/generated/asm/errno.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/asm-generic/errno.h \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include/mach/ion.h \

drivers/gpu/ion/msm/ion_cp_common.o: $(deps_drivers/gpu/ion/msm/ion_cp_common.o)

$(deps_drivers/gpu/ion/msm/ion_cp_common.o):

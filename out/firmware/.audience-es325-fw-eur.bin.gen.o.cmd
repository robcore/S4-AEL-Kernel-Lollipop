cmd_firmware/audience-es325-fw-eur.bin.gen.o := /media/root/robcore/android/S4-AEL-Kernel-Lollipop/scripts/gcc-wrapper.py /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-gcc -Wp,-MD,firmware/.audience-es325-fw-eur.bin.gen.o.d  -nostdinc -isystem /opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/../lib/gcc/arm-cortex_a15-linux-gnueabihf/4.9.4/include -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include -Iarch/arm/include/generated -Iinclude  -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/include -include /media/root/robcore/android/S4-AEL-Kernel-Lollipop/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian   -I/media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/mach-msm/include -D__ASSEMBLY__ -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7 -mcpu=cortex-a15 -include asm/unified.h -msoft-float   -c -o firmware/audience-es325-fw-eur.bin.gen.o firmware/audience-es325-fw-eur.bin.gen.S

source_firmware/audience-es325-fw-eur.bin.gen.o := firmware/audience-es325-fw-eur.bin.gen.S

deps_firmware/audience-es325-fw-eur.bin.gen.o := \
  /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/thumb2/kernel.h) \

firmware/audience-es325-fw-eur.bin.gen.o: $(deps_firmware/audience-es325-fw-eur.bin.gen.o)

$(deps_firmware/audience-es325-fw-eur.bin.gen.o):

#!/bin/bash
export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-
mkdir $(pwd)/out
make -C $(pwd) O=$(pwd)/out VARIANT_DEFCONFIG=AEL_config SELINUX_DEFCONFIG=selinux_defconfig
make ARCH=arm -j7 -C $(pwd) O=$(pwd)/out
cp $(pwd)/out/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage

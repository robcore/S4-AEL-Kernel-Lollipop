#!/bin/bash
rm -rf $(pwd)/out;
rm $(pwd)/arch/arm/boot/dhd.ko;
rm $(pwd)/arch/arm/boot/scsi_wait_scan.ko;
rm $(pwd)/arch/arm/boot/zImage;
rm $(pwd)/arch/arm/boot/boot.img-zImage;
export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/arm-cortex_a15-linux-gnueabihf-linaro_4.9.4-2015.06/bin/arm-cortex_a15-linux-gnueabihf-
make clean;
make mrproper;
mkdir $(pwd)/out;
cp $(pwd)/arch/arm/configs/AEL_config $(pwd)/out/.config;
make ARCH=arm -j7 -C $(pwd) O=$(pwd)/out oldconfig;
make ARCH=arm -S -j7 -C $(pwd) O=$(pwd)/out;
cp $(pwd)/out/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage;
cp $(pwd)/out/drivers/net/wireless/bcmdhd/dhd.ko $(pwd)/arch/arm/boot/dhd.ko;
cp $(pwd)/out/drivers/scsi/scsi_wait_scan.ko $(pwd)/arch/arm/boot/scsi_wait_scan.ko;
mv $(pwd)/arch/arm/boot/zImage $(pwd)/arch/arm/boot/boot.img-zImage;
cd /media/root/robcore/AIK;
rm -rf S4-Machinex-8.x-new;
cp -R S4-Machinex-8.x S4-Machinex-8.x-new;
cp /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/boot/dhd.ko $(pwd)/S4-Machinex-8.x-new/system/lib/modules/dhd.ko;
cp /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/boot/scsi_wait_scan.ko $(pwd)/S4-Machinex-8.x-new/system/lib/modules/scsi_wait_scan.ko;
rm $(pwd)/split_img/boot.img-zImage;
cp /media/root/robcore/android/S4-AEL-Kernel-Lollipop/arch/arm/boot/boot.img-zImage $(pwd)/split_img/boot.img-zImage;
rm image-new.img;
sh repackimg.sh;
cp image-new.img $(pwd)/S4-Machinex-8.x-new/boot.img

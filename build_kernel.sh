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
make ARCH=arm -j7 -C $(pwd) O=$(pwd)/out;
cp $(pwd)/out/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage;
cp $(pwd)/out/drivers/net/wireless/bcmdhd/dhd.ko $(pwd)/arch/arm/boot/dhd.ko;
cp $(pwd)/out/drivers/scsi/scsi_wait_scan.ko $(pwd)/arch/arm/boot/scsi_wait_scan.ko;
mv $(pwd)/arch/arm/boot/zImage $(pwd)/arch/arm/boot/boot.img-zImage;
cp /media/root/robcore/AIK/S4-Machinex-6.x /media/root/robcore/AIK/S4-Machinex-6.x-new;
cp $(pwd)/arch/arm/boot/dhd.ko /media/root/robcore/AIK/S4-Machinex-6.x-new/system/lib/dhd.ko;
cp $(pwd)/arch/arm/boot/scsi_wait_scan.ko; /media/root/robcore/AIK/S4-Machinex-6.x-new/system/lib/scsi_wait_scan.ko;
rm /media/root/robcore/AIK/split_img/boot.img-zImage;
cp $(pwd)/arch/arm/boot/boot.img-zImage /media/root/robcore/AIK/split_img/boot.img-zImage;
rm /media/root/robcore/AIK/image-new.img
sh /media/root/robcore/AIK/repackimg.sh;
cp image-new.img /media/root/robcore/AIK/S4-Machinex-6.x-new/boot.img

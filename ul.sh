#!/bin/sh

su aaron -c 'make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage'
su aaron -c 'make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- modules'
su aaron -c 'make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- imx23-olinuxino.dtb'

rm -rf /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot/*.ko
rm -rf /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot/zImage
rm -rf /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot/uImage
rm /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot/*
# uEnv.txt rm /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot
cp arch/arm/boot/uImage /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot
#cp arch/arm/boot/zImage /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot
cp drivers/spi/*.ko /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot
cp drivers/video/fbtft/*.ko /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot
cp drivers/video/*.ko /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot
cp arch/arm/boot/dts/imx23-olinuxino.dtb /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot/
mv arch/arm/boot/dts/imx23-olinuxino.dtb /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1/boot/imx23.dtb

umount /media/aaron/170e044a-7f9c-415e-b024-5d206a012cc1

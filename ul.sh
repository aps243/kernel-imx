#!/bin/sh

su aaron -c 'make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- uImage'
su aaron -c 'make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- modules'
su aaron -c 'make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- imx23-olinuxino.dtb'

rm -rf /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot/*.ko
rm -rf /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot/zImage
rm -rf /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot/uImage

cp arch/arm/boot/uImage /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot
cp arch/arm/boot/zImage /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot
cp drivers/spi/*.ko /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot
cp drivers/video/fbtft/*.ko /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot
cp drivers/video/*.ko /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot
cp arch/arm/boot/dts/imx23-olinuxino.dtb /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot
mv arch/arm/boot/dts/imx23-olinuxino.dtb /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d/boot/imx23.dtb

umount /media/aaron/3bc0b08a-9d2a-4717-b3af-625685ab031d

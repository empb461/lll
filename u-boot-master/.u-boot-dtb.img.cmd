cmd_u-boot-dtb.img := ./tools/mkimage -A arm -T firmware -C none -O u-boot -a 0x4a000000 -e 0 -n "U-Boot 2017.05-rc2 for sunxi board" -d u-boot.bin u-boot-dtb.img  >/dev/null

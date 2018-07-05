cmd_arch/arm/dts/sun7i-a20-cubieboard2.dtb := mkdir -p arch/arm/dts/ ; cat arch/arm/dts/sun7i-a20-cubieboard2.dts  | sed '/^\/ {$$/{x;s%$$%\#include \"./arch/arm/dts/sunxi-u-boot.dtsi\"%;G;}' | arm-linux-gcc -E -Wp,-MD,arch/arm/dts/.sun7i-a20-cubieboard2.dtb.d.pre.tmp -nostdinc -I./arch/arm/dts -I./arch/arm/dts/include -Iinclude -I./include -I./arch/arm/include -include ./include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm/dts/.sun7i-a20-cubieboard2.dtb.dts.tmp - ; dtc -O dtb -o arch/arm/dts/sun7i-a20-cubieboard2.dtb -b 0 -i arch/arm/dts/    -d arch/arm/dts/.sun7i-a20-cubieboard2.dtb.d.dtc.tmp arch/arm/dts/.sun7i-a20-cubieboard2.dtb.dts.tmp ; cat arch/arm/dts/.sun7i-a20-cubieboard2.dtb.d.pre.tmp arch/arm/dts/.sun7i-a20-cubieboard2.dtb.d.dtc.tmp > arch/arm/dts/.sun7i-a20-cubieboard2.dtb.d

source_arch/arm/dts/sun7i-a20-cubieboard2.dtb := arch/arm/dts/sun7i-a20.dtsi

deps_arch/arm/dts/sun7i-a20-cubieboard2.dtb := \
  arch/arm/dts/skeleton.dtsi \
  arch/arm/dts/include/dt-bindings/interrupt-controller/arm-gic.h \
  arch/arm/dts/include/dt-bindings/interrupt-controller/irq.h \
  arch/arm/dts/include/dt-bindings/thermal/thermal.h \
  arch/arm/dts/include/dt-bindings/clock/sun4i-a10-pll2.h \
  arch/arm/dts/include/dt-bindings/dma/sun4i-a10.h \
  arch/arm/dts/include/dt-bindings/pinctrl/sun4i-a10.h \
  arch/arm/dts/sunxi-common-regulators.dtsi \
  arch/arm/dts/include/dt-bindings/gpio/gpio.h \
  arch/arm/dts/sunxi-u-boot.dtsi \
    $(wildcard include/config/spl/pad/to.h) \
  include/config.h \
    $(wildcard include/config/sunxi/gmac.h) \
    $(wildcard include/config/satapwr.h) \
    $(wildcard include/config/boarddir.h) \
  include/config_defaults.h \
    $(wildcard include/config/defaults/h/.h) \
    $(wildcard include/config/bootm/linux.h) \
    $(wildcard include/config/bootm/netbsd.h) \
    $(wildcard include/config/bootm/plan9.h) \
    $(wildcard include/config/bootm/rtems.h) \
    $(wildcard include/config/bootm/vxworks.h) \
    $(wildcard include/config/gzip.h) \
    $(wildcard include/config/zlib.h) \
  include/config_uncmd_spl.h \
    $(wildcard include/config/uncmd/spl/h//.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/dm/serial.h) \
    $(wildcard include/config/dm/gpio.h) \
    $(wildcard include/config/dm/i2c.h) \
    $(wildcard include/config/dm/spi.h) \
    $(wildcard include/config/dm/warn.h) \
    $(wildcard include/config/dm/stdio.h) \
  include/configs/sun7i.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/usb/ehci.h) \
    $(wildcard include/config/usb/ehci/sunxi.h) \
    $(wildcard include/config/sunxi/usb/phys.h) \
    $(wildcard include/config/armv7/secure/base.h) \
    $(wildcard include/config/armv7/secure/max/size.h) \
    $(wildcard include/config/mach/type.h) \
    $(wildcard include/config/mach/type/compat/rev.h) \
  include/configs/sunxi-common.h \
    $(wildcard include/config/old/sunxi/kernel/compat.h) \
    $(wildcard include/config/sys/ns16550/serial.h) \
    $(wildcard include/config/sys/ns16550/clk.h) \
    $(wildcard include/config/sys/ns16550/reg/size.h) \
    $(wildcard include/config/sys/ns16550/com1.h) \
    $(wildcard include/config/sys/ns16550/com2.h) \
    $(wildcard include/config/sys/ns16550/com3.h) \
    $(wildcard include/config/sys/ns16550/com4.h) \
    $(wildcard include/config/sys/ns16550/com5.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/mach/sun9i.h) \
    $(wildcard include/config/sys/sdram/base.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/sys/text/base.h) \
    $(wildcard include/config/spl/stack/r/addr.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/sunxi/high/sram.h) \
    $(wildcard include/config/sys/init/ram/addr.h) \
    $(wildcard include/config/sys/init/ram/size.h) \
    $(wildcard include/config/sys/init/sp/offset.h) \
    $(wildcard include/config/sys/init/sp/addr.h) \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/ahci.h) \
    $(wildcard include/config/libata.h) \
    $(wildcard include/config/scsi/ahci.h) \
    $(wildcard include/config/scsi/ahci/plat.h) \
    $(wildcard include/config/sunxi/ahci.h) \
    $(wildcard include/config/sys/64bit/lba.h) \
    $(wildcard include/config/sys/scsi/max/scsi/id.h) \
    $(wildcard include/config/sys/scsi/max/lun.h) \
    $(wildcard include/config/sys/scsi/max/device.h) \
    $(wildcard include/config/scsi.h) \
    $(wildcard include/config/setup/memory/tags.h) \
    $(wildcard include/config/cmdline/tag.h) \
    $(wildcard include/config/initrd/tag.h) \
    $(wildcard include/config/serial/tag.h) \
    $(wildcard include/config/nand/sunxi.h) \
    $(wildcard include/config/sys/nand/max/eccpos.h) \
    $(wildcard include/config/sys/nand/onfi/detection.h) \
    $(wildcard include/config/sys/max/nand/device.h) \
    $(wildcard include/config/mtd/device.h) \
    $(wildcard include/config/mtd/partitions.h) \
    $(wildcard include/config/spl/spi/sunxi.h) \
    $(wildcard include/config/sys/spi/u/boot/offs.h) \
    $(wildcard include/config/mmc.h) \
    $(wildcard include/config/mmc/sunxi/slot.h) \
    $(wildcard include/config/env/is/in/mmc.h) \
    $(wildcard include/config/sys/mmc/env/dev.h) \
    $(wildcard include/config/sys/mmc/max/device.h) \
    $(wildcard include/config/env/is/nowhere.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/sys/malloc/len.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/sys/bargsize.h) \
    $(wildcard include/config/standalone/load/addr.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/fat/write.h) \
    $(wildcard include/config/spl/framework.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/spl/board/load/image.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/spl/max/size.h) \
    $(wildcard include/config/spl/stack.h) \
    $(wildcard include/config/spl/ldscript.h) \
    $(wildcard include/config/axp152/power.h) \
    $(wildcard include/config/axp209/power.h) \
    $(wildcard include/config/sy8106a/power.h) \
    $(wildcard include/config/i2c0/enable.h) \
    $(wildcard include/config/i2c1/enable.h) \
    $(wildcard include/config/i2c2/enable.h) \
    $(wildcard include/config/i2c3/enable.h) \
    $(wildcard include/config/i2c4/enable.h) \
    $(wildcard include/config/r/i2c/enable.h) \
    $(wildcard include/config/sys/i2c.h) \
    $(wildcard include/config/sys/i2c/mvtwsi.h) \
    $(wildcard include/config/sys/i2c/speed.h) \
    $(wildcard include/config/sys/i2c/slave.h) \
    $(wildcard include/config/video/lcd/panel/i2c.h) \
    $(wildcard include/config/sys/i2c/soft.h) \
    $(wildcard include/config/sys/i2c/soft/speed.h) \
    $(wildcard include/config/sys/i2c/soft/slave.h) \
    $(wildcard include/config/soft/i2c/gpio/sda.h) \
    $(wildcard include/config/soft/i2c/gpio/scl.h) \
    $(wildcard include/config/video/lcd/i2c/bus.h) \
    $(wildcard include/config/sys/spd/bus/num.h) \
    $(wildcard include/config/axp221/power.h) \
    $(wildcard include/config/axp818/power.h) \
    $(wildcard include/config/cons/index.h) \
    $(wildcard include/config/require/serial/console.h) \
    $(wildcard include/config/mach/sun5i.h) \
    $(wildcard include/config/mach/sun8i.h) \
    $(wildcard include/config/sunxi/gpio.h) \
    $(wildcard include/config/video.h) \
    $(wildcard include/config/sunxi/max/fb/size.h) \
    $(wildcard include/config/video/dt/simplefb.h) \
    $(wildcard include/config/video/sunxi.h) \
    $(wildcard include/config/video/logo.h) \
    $(wildcard include/config/video/std/timings.h) \
    $(wildcard include/config/i2c/edid.h) \
    $(wildcard include/config/sunxi/emac.h) \
    $(wildcard include/config/phy/addr.h) \
    $(wildcard include/config/mii.h) \
    $(wildcard include/config/phylib.h) \
    $(wildcard include/config/phy/gige.h) \
    $(wildcard include/config/phy/realtek.h) \
    $(wildcard include/config/usb/ehci/hcd.h) \
    $(wildcard include/config/usb/ohci/new.h) \
    $(wildcard include/config/usb/ohci/sunxi.h) \
    $(wildcard include/config/sys/usb/ohci/max/root/ports.h) \
    $(wildcard include/config/sys/usb/ehci/max/root/ports.h) \
    $(wildcard include/config/usb/musb/sunxi.h) \
    $(wildcard include/config/usb/musb/pio/only.h) \
    $(wildcard include/config/usb/musb/gadget.h) \
    $(wildcard include/config/usb/function/fastboot.h) \
    $(wildcard include/config/usb/function/mass/storage.h) \
    $(wildcard include/config/cmd/fastboot.h) \
    $(wildcard include/config/fastboot/buf/addr.h) \
    $(wildcard include/config/fastboot/buf/size.h) \
    $(wildcard include/config/android/boot/image.h) \
    $(wildcard include/config/fastboot/flash.h) \
    $(wildcard include/config/fastboot/flash/mmc/dev.h) \
    $(wildcard include/config/usb/keyboard.h) \
    $(wildcard include/config/preboot.h) \
    $(wildcard include/config/sys/usb/event/poll/via/int/queue.h) \
    $(wildcard include/config/misc/init/r.h) \
    $(wildcard include/config/mmc/sunxi/slot/extra.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/mtdids/default.h) \
    $(wildcard include/config/mtdparts/default.h) \
    $(wildcard include/config/extra/env/settings.h) \
    $(wildcard include/config/default/device/tree.h) \
  arch/arm/include/asm/arch/cpu.h \
  arch/arm/include/asm/arch/cpu_sun4i.h \
    $(wildcard include/config/mach/sun8i/a83t.h) \
    $(wildcard include/config/sunxi/gen/sun4i.h) \
    $(wildcard include/config/sunxi/gen/sun6i.h) \
    $(wildcard include/config/mach/sunxi/h3/h5.h) \
    $(wildcard include/config/mach/sun50i.h) \
    $(wildcard include/config/mach/sun7i.h) \
    $(wildcard include/config/mach/sun6i.h) \
  include/linux/stringify.h \
  include/config_distro_defaults.h \
    $(wildcard include/config/cmd/distro/defaults/h.h) \
    $(wildcard include/config/bootp/bootpath.h) \
    $(wildcard include/config/bootp/dns.h) \
    $(wildcard include/config/bootp/gateway.h) \
    $(wildcard include/config/bootp/hostname.h) \
    $(wildcard include/config/bootp/pxe.h) \
    $(wildcard include/config/bootp/subnetmask.h) \
    $(wildcard include/config/cmdline/editing.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/support/raw/initrd.h) \
    $(wildcard include/config/env/vars/uboot/config.h) \
  include/config_distro_bootcmd.h \
    $(wildcard include/config/cmd/distro/bootcmd/h.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/cmd/sata.h) \
    $(wildcard include/config/cmd/ide.h) \
    $(wildcard include/config/cmd/pci/enum.h) \
    $(wildcard include/config/dm/pci.h) \
    $(wildcard include/config/cmd/usb.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp/or/pxe.h) \
    $(wildcard include/config/bootcommand.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/h/.h) \
    $(wildcard include/config/lmb.h) \
    $(wildcard include/config/sys/boot/ramdisk/high.h) \
    $(wildcard include/config/static/rela.h) \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/cpu/pxa27x.h) \
    $(wildcard include/config/cpu/monahans.h) \
    $(wildcard include/config/cpu/pxa25x.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/config_fallbacks.h \
    $(wildcard include/config/fallbacks/h.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/sys/baudrate/table.h) \
    $(wildcard include/config/cmd/fat.h) \
    $(wildcard include/config/fs/fat.h) \
    $(wildcard include/config/cmd/ext4.h) \
    $(wildcard include/config/cmd/ext2.h) \
    $(wildcard include/config/fs/ext4.h) \
    $(wildcard include/config/cmd/ext4/write.h) \
    $(wildcard include/config/ext4/write.h) \
    $(wildcard include/config/cmd/part.h) \
    $(wildcard include/config/cmd/gpt.h) \
    $(wildcard include/config/systemace.h) \
    $(wildcard include/config/partition/uuids.h) \
    $(wildcard include/config/efi/partition.h) \
    $(wildcard include/config/random/uuid.h) \
    $(wildcard include/config/cmd/uuid.h) \
    $(wildcard include/config/lib/uuid.h) \
    $(wildcard include/config/lib/rand.h) \
    $(wildcard include/config/lib/hw/rand.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/lcd.h) \
    $(wildcard include/config/cmd/bmp.h) \
    $(wildcard include/config/fit/signature.h) \
    $(wildcard include/config/image/format/legacy.h) \
    $(wildcard include/config/disable/image/legacy.h) \
    $(wildcard include/config/cmdline.h) \
  arch/arm/dts/axp209.dtsi \

arch/arm/dts/sun7i-a20-cubieboard2.dtb: $(deps_arch/arm/dts/sun7i-a20-cubieboard2.dtb)

$(deps_arch/arm/dts/sun7i-a20-cubieboard2.dtb):

cmd_u-boot.srec := arm-linux-objcopy --gap-fill=0xff  -j .text -j .secure_text -j .secure_data -j .rodata -j .hash -j .data -j .got -j .got.plt -j .u_boot_list -j .rel.dyn -j .efi_runtime -j .efi_runtime_rel -O srec u-boot u-boot.srec

cmd_examples/standalone/hello_world := arm-linux-ld.bfd   -g -Ttext 0x42000000 -o examples/standalone/hello_world -e hello_world examples/standalone/hello_world.o examples/standalone/libstubs.o arch/arm/lib/lib.a

.PHONY: all clean emulate

all: sysx.iso

sysx.iso: ../../kernel/kernel.elf
	mkdir -p tmp/boot/grub
	cp ../../kernel/kernel.elf tmp/kernel.elf
	cp stage2_eltorito tmp/boot/grub/stage2_eltorito
	cp menu.lst tmp/boot/grub/menu.lst
	genisoimage -R -b boot/grub/stage2_eltorito -no-emul-boot -boot-load-size 4 -boot-info-table -o sysx.iso tmp
	rm -rf tmp

clean:
	rm -rf tmp
	rm sysx.iso

emulate: sysx.iso
	qemu-system-i386 -cdrom sysx.iso -serial stdio

AS = nasm

bootloader:
	$(AS) boot.asm -f bin -o boot.bin

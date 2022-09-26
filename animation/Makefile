
animation: animation.o
	ld -o animation animation.o
animation.o:
	nasm -f elf64 -g -F dwarf animation.asm 

clean:
	rm -f animation
	rm -f animation.o



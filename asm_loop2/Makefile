
asm_loop2: asm_loop2.o
	ld -o asm_loop2 asm_loop2.o
asm_loop2.o:
	nasm -f elf64 -g -F dwarf asm_loop2.asm 

clean:
	rm -f asm_loop2
	rm -f asm_loop2.o



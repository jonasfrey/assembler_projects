
asm_loop: asm_loop.o
	ld -o asm_loop asm_loop.o
asm_loop.o:
	nasm -f elf64 -g -F dwarf asm_loop.asm 

clean:
	rm -f asm_loop
	rm -f asm_loop.o 



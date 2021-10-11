
: .o
	ld -o  .o
.o:
	nasm -f elf64 -g -F dwarf .asm 

clean:
	rm -f 
	rm -f .o 



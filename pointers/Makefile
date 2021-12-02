
pointers: pointers.o
	ld -o pointers pointers.o
pointers.o:
	nasm -f elf64 -g -F dwarf pointers.asm 

clean:
	rm -f pointers
	rm -f pointers.o



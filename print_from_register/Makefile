
print_from_register: print_from_register.o
	ld -o print_from_register print_from_register.o
print_from_register.o:
	nasm -f elf64 -g -F dwarf print_from_register.asm 

clean:
	rm -f print_from_register
	rm -f print_from_register.o



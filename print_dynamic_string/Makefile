
print_dynamic_string: print_dynamic_string.o
	ld -o print_dynamic_string print_dynamic_string.o
print_dynamic_string.o:
	nasm -f elf64 -g -F dwarf print_dynamic_string.asm 

clean:
	rm -f print_dynamic_string
	rm -f print_dynamic_string.o



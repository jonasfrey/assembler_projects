
print_rax_string: print_rax_string.o
	ld -o print_rax_string print_rax_string.o
print_rax_string.o:
	nasm -f elf64 -g -F dwarf print_rax_string.asm 

clean:
	rm -f print_rax_string
	rm -f print_rax_string.o



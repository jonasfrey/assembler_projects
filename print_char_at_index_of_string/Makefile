
print_char_at_index_of_string: print_char_at_index_of_string.o
	ld -o print_char_at_index_of_string print_char_at_index_of_string.o
print_char_at_index_of_string.o:
	nasm -f elf64 -g -F dwarf print_char_at_index_of_string.asm 

clean:
	rm -f print_char_at_index_of_string
	rm -f print_char_at_index_of_string.o



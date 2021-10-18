
string_special_chars_in_double_quotes: string_special_chars_in_double_quotes.o
	ld -o string_special_chars_in_double_quotes string_special_chars_in_double_quotes.o
string_special_chars_in_double_quotes.o:
	nasm -f elf64 -g -F dwarf string_special_chars_in_double_quotes.asm 

clean:
	rm -f string_special_chars_in_double_quotes
	rm -f string_special_chars_in_double_quotes.o 



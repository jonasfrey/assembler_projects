
variable_name_allowed_characters_test: variable_name_allowed_characters_test.o
	ld -o variable_name_allowed_characters_test variable_name_allowed_characters_test.o
variable_name_allowed_characters_test.o:
	nasm -f elf64 -g -F dwarf variable_name_allowed_characters_test.asm 

clean:
	rm -f variable_name_allowed_characters_test
	rm -f variable_name_allowed_characters_test.o 



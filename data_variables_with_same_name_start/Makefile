
data_variables_with_same_name_start: data_variables_with_same_name_start.o
	ld -o data_variables_with_same_name_start data_variables_with_same_name_start.o
data_variables_with_same_name_start.o:
	nasm -f elf64 -g -F dwarf data_variables_with_same_name_start.asm 

clean:
	rm -f data_variables_with_same_name_start
	rm -f data_variables_with_same_name_start.o



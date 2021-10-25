
output_string_2: output_string_2.o
	ld -o output_string_2 output_string_2.o
output_string_2.o:
	nasm -f elf64 -g -F dwarf output_string_2.asm 

clean:
	rm -f output_string_2
	rm -f output_string_2.o 



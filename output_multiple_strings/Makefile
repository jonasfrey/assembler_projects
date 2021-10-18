
output_multiple_strings: output_multiple_strings.o
	ld -o output_multiple_strings output_multiple_strings.o
output_multiple_strings.o:
	nasm -f elf64 -g -F dwarf output_multiple_strings.asm 

clean:
	rm -f output_multiple_strings
	rm -f output_multiple_strings.o 



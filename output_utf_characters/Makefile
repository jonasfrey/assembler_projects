
output_utf_characters: output_utf_characters.o
	ld -o output_utf_characters output_utf_characters.o
output_utf_characters.o:
	nasm -f elf64 -g -F dwarf output_utf_characters.asm 

clean:
	rm -f output_utf_characters
	rm -f output_utf_characters.o 




transform_ascii_characters: transform_ascii_characters.o
	ld -o transform_ascii_characters transform_ascii_characters.o
transform_ascii_characters.o:
	nasm -f elf64 -g -F dwarf transform_ascii_characters.asm 

clean:
	rm -f transform_ascii_characters
	rm -f transform_ascii_characters.o



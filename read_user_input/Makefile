
read_user_input: read_user_input.o
	ld -o read_user_input read_user_input.o
read_user_input.o:
	nasm -f elf64 -g -F dwarf read_user_input.asm 

clean:
	rm -f read_user_input
	rm -f read_user_input.o



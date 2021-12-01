
get_user_input: get_user_input.o
	ld -o get_user_input get_user_input.o
get_user_input.o:
	nasm -f elf64 -g -F dwarf get_user_input.asm 

clean:
	rm -f get_user_input
	rm -f get_user_input.o



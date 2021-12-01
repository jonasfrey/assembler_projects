
infinity_loop_random_char: infinity_loop_random_char.o
	ld -o infinity_loop_random_char infinity_loop_random_char.o
infinity_loop_random_char.o:
	nasm -f elf64 -g -F dwarf infinity_loop_random_char.asm 

clean:
	rm -f infinity_loop_random_char
	rm -f infinity_loop_random_char.o



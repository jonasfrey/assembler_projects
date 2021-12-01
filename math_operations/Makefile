
math_operations: math_operations.o
	ld -o math_operations math_operations.o
math_operations.o:
	nasm -f elf64 -g -F dwarf math_operations.asm 

clean:
	rm -f math_operations
	rm -f math_operations.o




loop_example: loop_example.o
	ld -o loop_example loop_example.o
loop_example.o:
	nasm -f elf64 -g -F dwarf loop_example.asm 

clean:
	rm -f loop_example
	rm -f loop_example.o 



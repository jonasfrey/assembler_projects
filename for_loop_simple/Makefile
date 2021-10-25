
for_loop_simple: for_loop_simple.o
	ld -o for_loop_simple for_loop_simple.o
for_loop_simple.o:
	nasm -f elf64 -g -F dwarf for_loop_simple.asm 

clean:
	rm -f for_loop_simple
	rm -f for_loop_simple.o 



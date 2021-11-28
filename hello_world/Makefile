
hello_world: hello_world.o
	ld -o hello_world hello_world.o
hello_world.o:
	nasm -f elf64 -g -F dwarf hello_world.asm 

clean:
	rm -f hello_world
	rm -f hello_world.o



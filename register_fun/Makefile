
register_fun: register_fun.o
	ld -o register_fun register_fun.o
register_fun.o:
	nasm -f elf64 -g -F dwarf register_fun.asm 

clean:
	rm -f register_fun
	rm -f register_fun.o



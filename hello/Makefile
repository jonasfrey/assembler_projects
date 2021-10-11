
hello: hello.o
	ld -o hello hello.o
hello.o:
	nasm -f elf64 -g -F dwarf hello.asm 

clean:
	rm -f hello
	rm -f hello.o 



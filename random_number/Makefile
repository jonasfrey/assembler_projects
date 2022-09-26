
random_number: random_number.o
	ld -o random_number random_number.o
random_number.o:
	nasm -f elf64 -g -F dwarf random_number.asm 

clean:
	rm -f random_number
	rm -f random_number.o



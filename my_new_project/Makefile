
my_new_project: my_new_project.o
	ld -o my_new_project my_new_project.o
my_new_project.o:
	nasm -f elf64 -g -F dwarf my_new_project.asm 

clean:
	rm -f my_new_project
	rm -f my_new_project.o 




register_problem: register_problem.o
	ld -o register_problem register_problem.o
register_problem.o:
	nasm -f elf64 -g -F dwarf register_problem.asm 

clean:
	rm -f register_problem
	rm -f register_problem.o



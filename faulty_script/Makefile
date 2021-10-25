
faulty_script: faulty_script.o
	ld -o faulty_script faulty_script.o
faulty_script.o:
	nasm -f elf64 -g -F dwarf faulty_script.asm 

clean:
	rm -f faulty_script
	rm -f faulty_script.o 



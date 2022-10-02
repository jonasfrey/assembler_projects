
new_registers: new_registers.o
	ld -o new_registers new_registers.o
new_registers.o:
	nasm -f elf64 -g -F dwarf new_registers.asm 

clean:
	rm -f new_registers
	rm -f new_registers.o



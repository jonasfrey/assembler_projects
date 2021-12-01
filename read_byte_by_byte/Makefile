
read_byte_by_byte: read_byte_by_byte.o
	ld -o read_byte_by_byte read_byte_by_byte.o
read_byte_by_byte.o:
	nasm -f elf64 -g -F dwarf read_byte_by_byte.asm 

clean:
	rm -f read_byte_by_byte
	rm -f read_byte_by_byte.o



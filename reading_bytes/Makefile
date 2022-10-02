
reading_bytes: reading_bytes.o
	ld -o reading_bytes reading_bytes.o
reading_bytes.o:
	nasm -f elf64 -g -F dwarf reading_bytes.asm 

clean:
	rm -f reading_bytes
	rm -f reading_bytes.o



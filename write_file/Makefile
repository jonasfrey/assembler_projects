
write_file: write_file.o
	ld -o write_file write_file.o
write_file.o:
	nasm -f elf64 -g -F dwarf write_file.asm 

clean:
	rm -f write_file
	rm -f write_file.o



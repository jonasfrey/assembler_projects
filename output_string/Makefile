
output_string.o:
	nasm -f elf64 -g -F dawrf output_string.asm 

output_string: output_string.o
	ld -o output_string output_string.o

clean:
	rm -f output_string
	rm -f output_string.o 



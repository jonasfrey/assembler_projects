
final_sample: final_sample.o
	ld -o final_sample final_sample.o
final_sample.o:
	nasm -f elf64 -g -F dwarf final_sample.asm 

clean:
	rm -f final_sample
	rm -f final_sample.o



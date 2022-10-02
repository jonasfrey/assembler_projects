
printint_utf8: printint_utf8.o
	ld -o printint_utf8 printint_utf8.o
printint_utf8.o:
	nasm -f elf64 -g -F dwarf printint_utf8.asm 

clean:
	rm -f printint_utf8
	rm -f printint_utf8.o



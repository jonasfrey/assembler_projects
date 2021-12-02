
register_gets_overwritten_by_syscall: register_gets_overwritten_by_syscall.o
	ld -o register_gets_overwritten_by_syscall register_gets_overwritten_by_syscall.o
register_gets_overwritten_by_syscall.o:
	nasm -f elf64 -g -F dwarf register_gets_overwritten_by_syscall.asm 

clean:
	rm -f register_gets_overwritten_by_syscall
	rm -f register_gets_overwritten_by_syscall.o



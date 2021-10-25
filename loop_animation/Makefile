
loop_animation: loop_animation.o
	ld -o loop_animation loop_animation.o
loop_animation.o:
	nasm -f elf64 -g -F dwarf loop_animation.asm 

clean:
	rm -f loop_animation
	rm -f loop_animation.o



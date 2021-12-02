
simple_loop_animation: simple_loop_animation.o
	ld -o simple_loop_animation simple_loop_animation.o
simple_loop_animation.o:
	nasm -f elf64 -g -F dwarf simple_loop_animation.asm 

clean:
	rm -f simple_loop_animation
	rm -f simple_loop_animation.o



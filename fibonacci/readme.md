# compile to binary
gcc -o fibonacci fibonacci.c

# disassemble it osx
otool -tv fibonacci > fibonacci_disasembled.asm

# disassemble it linux 
objdump -d fibonacci > fibonacci_disasembled.asm

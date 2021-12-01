
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


section .data 

    number_is_greater_than_ten db "number is greater than ten"

section .text 

    ; comparisons are done on registers
    ; the general format of a comparison is

    ; cmp register, regsiter/value

    ; # registers
    ; |name/use       |64-bit     |32-bit     |16-bit     |8-bit High/Low (H/L)       |
    ; |---            |---        |---        |---        |---                        |
    ; |accumulator    |rax        |eax        |ax         |ah/al                      |
    ; |counter        |rcx        |ecx        |cx         |ch/cl                      |
    ; |data           |rdx        |edx        |dx         |dh/dl                      |
    ; |base           |rbx        |edx        |bx         |bh/bl                      |
    
    global _start

_start: 



    ; end the programm 
    mov rax, 60
    mov rdi, 0 
    syscall
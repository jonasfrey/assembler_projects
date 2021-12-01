
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 



section .text 

section .data

    my_var db "0123456789"


global _start 


_start:

    mov rax, 1
    mov rsi, 1 
    mov rdi, byte [my_var+2]
    mov rdx, 1
    syscall 


    mov rax, 60
    mov rsi, 1
    syscall
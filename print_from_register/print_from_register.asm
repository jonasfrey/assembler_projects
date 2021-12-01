
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


section .data

    asdf db "asdf"


section .bss 

    mybytes resb 1


section .text 


global _start 


    mov rcx, 10 
    mov ecx, 44
    mov cx, 2

    mov rax, 1
    mov rdi, 1
    mov rsi, cx
    syscall

_start: 

    mov rax, 60
    mov rdi, 0 
    syscall

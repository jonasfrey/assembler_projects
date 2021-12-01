
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 



; math operations 

section .data 

    my_fucking_new_line db 10 

section .text 

global _start 

_start: 
    mov rax, 1 
    mov rsi, 1
    mov rdi, my_fucking_new_line
    mov rdx, 1
    syscall

    mov rax, 0 
    add rax, 5 ; the value in rax is incremented by 5 
    
    mov rbx, 22 
    sub rbx, rax ; rbx is going to be decremented

    mov rax, 60
    mov rdi, 0
    syscall 



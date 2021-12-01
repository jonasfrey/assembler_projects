
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


section .data    
    text1 db "what is your name? :"
    text2 db "Hello your name is :"
    
section .bss ; this section can be used to reserve data 

    reserved_bytes_for_name resb 16; resb reserve bytes, this will reserve 16 bytes

section .text

global _start 

_start: 

        
    mov rax, 1 
    mov rdi, 1
    mov rsi, text1
    mov rdx, 20
    syscall
    
    mov rax, 0 ; ID for getting user input
    mov rdi, 0 ; read from 1-> standard input stdin
    mov rsi, reserved_bytes_for_name ; where it is going to store the data 
    mov rdx, 16 ; the length of input we wanna get 
    syscall 

    mov rax, 1 
    mov rdi, 1
    mov rsi, text2
    mov rdx, 20
    syscall 


    mov rax, 1
    mov rdi, 1 
    mov rsi, reserved_bytes_for_name
    mov rdx, 16 ; since we reserved 16 bytes
    syscall

    mov rax, 60
    mov rdi, 0 
    syscall 
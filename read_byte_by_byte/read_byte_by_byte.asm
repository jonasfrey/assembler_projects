
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

section .bss
    my_fucking_byte resb 1 ; resb -> reserve bytes 


section .data 
    text_all_input_was_taken db  "all input was taken!"   ; db -> define bytes
    text_reading_another_byte db "reading another byte"

section .text
    global _start

_start:
    
my_byte_reading_loop:

    ;mov rax, 1 
    ;mov rdi, 1
    ;mov rsi, my_fucking_byte
    ;mov rdx, 20
    ;syscall

    mov rax, 0 ; ID for getting user input
    mov rdi, 0 ; read from 1-> standard input stdin
    mov rsi, my_fucking_byte ; where it is going to store the data 
    mov rdx, 1 ; the length of input we wanna get 
    syscall

    ; the read byte is already in the rax 
    xor rax, rax    
    mov rax, [my_fucking_byte]

    cmp rax, 0
    jz byte_is_null ; zero terminator byte ! 

    jmp my_byte_reading_loop


byte_is_null:

    mov rax, 1 
    mov rdi, 1 
    mov rsi, text_all_input_was_taken
    mov rdx, 20
    syscall

    ;end programm
    mov rax, 60
    mov rdi, 0
    syscall
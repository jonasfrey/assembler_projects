
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


section .bss 
    digit_space resb 100        ; resb -> reserve bytes
                                ;digit_space_position 
                                ; is where we actually 
                                ;store the string

    digit_space_position resb 8 ; 8 bytes is 8*8bits = 64 bits


section .text 

global _start


_start: 


    mov rax, 123,
    call _printRAX

    mov rax, 60
    mov rdi, 0
    syscall


_print_RAX:
    mov rcx, digit_space
    mov rbx, 10 ; new line
    mov [rcx], rbx 
    inc rcxmov [digit_space_position], rcx

_print_RAX_Loop:
    mov rdx, 0
    mov rbx, 10
    div rbx
    add rdx, 48
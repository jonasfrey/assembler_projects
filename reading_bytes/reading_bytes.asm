
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

section .data 
    single_printing_placeholder_byte db "." ;. placeholder 

section .bss 
    my_byte resb 1              ; resb reserve bytes 

section .text
global _start 

_start: 

loop_read:
    ;reading 
    mov rax, 0          ; ID 0 , sys_read
    mov rdi, 0          ; 0 stdin
    mov rsi, my_byte    ; address/index of my_byte
    mov rdx, 1          ; the length of how many bytes to read
    syscall 

    mov r8, my_byte     ; for debugging 
    mov r9, [my_byte]   ; for debugging

    ; rax will be 0 when reading is done 
    ; but [my_byte] will be the last written byte again !!!!

    cmp rax, 0
    jz exit_program

    jmp loop_read

print_stuff_in_rax:

    push rax 
    mov [single_printing_placeholder_byte], rax
    mov rax, 1
    mov rdi, 1
    pop rsi
    mov rdx, 1 
    syscall
    ret 

exit_program:
    mov rax, 60
    mov rdi, 0 
    syscall

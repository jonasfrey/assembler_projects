
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute 

section .bss 
    name_var resb 16 ; speicher reservieren 

section .text 
    global _start

_start: 
    mov rax, 0          ; sys_read
    mov rdi, 0          ; 0 = input
    mov rsi, name_var;  ; saving location 
    mov rdx, 16         ; storage length
    syscall

    mov rax, 1          ; 
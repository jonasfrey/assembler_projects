
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute 


section .data 

    variable_name_for_string1:  db  65


section .text 

global _start


_start: 
    mov al, 5
    mov rsi, variable_name_for_string1
    L1:
    mov rax, 1 ; this tells the system to get ready to write out syscall number for sys_write  
    mov rdi, 1 ; this 
    arx rsi, 10
    mov rdx, 2 ; moves the length of the string into register rdx
    syscall ; make syscall to execute 
    dec al 
    jnz L1



    mov rax, 60 ; moves the sys_exit into register rax 
    xor rdi, rdi ; compares rdi and rdi , sets rdi to 0 if rdi and rdi are same 
    syscall ; again make syscall to execute or so 
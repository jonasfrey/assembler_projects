
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute 


section .data 

    var_name$special-char?t3st:  db  "abcdefghij" ; this variable name is not allowed 
                                                    ; error will be error: parser: instruction expected

section .text 

global _start


_start: 
    mov rax, 1 ; this tells the system to get ready to write out syscall number for sys_write  
    mov rdi, 1 ; this 
    mov rsi, var_name$special-char?t3st ; moves the string into register rsi 
    mov rdx, 10 ; moves the length of the string into register rdx
    syscall ; make syscall to execute 

    mov rax, 60 ; moves the sys_exit into register rax 
    xor rdi, rdi ; compares rdi and rdi , sets rdi to 0 if rdi and rdi are same 
    syscall ; again make syscall to execute or so 
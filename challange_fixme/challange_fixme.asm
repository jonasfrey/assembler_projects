
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute 


section .data 

variable_name_for_string1:  db  "im the ","first string"
length_of_the_string_hardcoded: db 19

section .text 

global _variable_name_of_the_start_function_or_so


_variable_name_of_the_start_function_or_so: 
mov rax, 1 ; this tells the system to get ready to write out syscall number for sys_write  
mov rdi, 1 ; this 
mov rsi, variable_name_for_string1 ; moves the string into register rsi 
mov rdx, length_of_the_string_hardcoded ; moves the length of the string into register rdx
syscall ; make syscall to execute 
mov rax, 60 ; moves the sys_exit into register rax 
xor rdi, rdi ; compares rdi and rdi , sets rdi to 0 if rdi and rdi are same 
syscall ; again make syscall to execute or so 
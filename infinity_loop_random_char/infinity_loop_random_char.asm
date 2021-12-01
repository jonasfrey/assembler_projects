
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

section .data 
    new_lines_string db 10,10,10,10,10,10,10,10,10; db -> define bytes 
    my_text db 'asdf',10 ; db -> define bytes 

section .text 

    global _start

_start:

loop_this_part: 
    mov rax, 1
    mov rdi, 1 ; where to write string, 0 -> stdin, 1 -> stdout , 2 -> stderr 
    ;this does not work mov rsi, "asdf",10; the buffer
    ;mov rsi, 65; the buffer
    mov rsi, my_text; the buffer
    mov rdx, 5 ; the length of the buffer
    syscall 

    mov rax, 1
    mov rdi, 1
    mov rsi, new_lines_string
    mov rdx, 9
    syscall

    jmp loop_this_part


    ; 'block' start
    mov rax, 60
    mov rdi, 0      ;to exit to programm without error we load 0 into rdi  
    syscall         ; this block would be 'sys_exit(0)'
    ; 'block' end 


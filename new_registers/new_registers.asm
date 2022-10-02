
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

section .data 
    single_byte_placeholder db "."  ;placeholder for printing text  sys_write

section .text 
    global _start


_start: 
    mov rcx, 22 
    mov r8, 22
    mov r9, 22
    mov r10, 22
    mov r11, 22
    mov r12, 22
    mov r13, 22
    mov r14, 22
    mov r15, 22

my_loop:

    dec r8
    dec r9
    dec r10
    dec r11
    dec r12
    dec r13
    dec r14
    dec r15
    dec rcx
    
    mov rax, single_byte_placeholder
    call sys_write_string_index_in_rax

    cmp rcx, 0      ;since rcx gets changed wiht syscall , it is not relialable as  a decrement counter !!! 
                    ; rcx will be always bigger than 0 !!! 
                    ; rcx is changed by syscall !!!! 
    je exit_programm

    ;cmp r8, 0      ; uncomment to test, if reliable
                    ; tested on dec 2 , reliable

    ;cmp r9, 0      ; uncomment to test, if reliable
                    ; tested on dec 2 , reliable

    ;cmp r10, 0     ; uncomment to test, if reliable
                    ; tested on dec 2 , reliable

    cmp r11, 0      ; uncomment to test, if reliable
                    ; tested on dec 2 , NOT reliable!
                    
    ;cmp r12, 0     ; uncomment to test, if reliable
                    ; tested on dec 2 , reliable

    ;cmp r13, 0     ; uncomment to test, if reliable
                    ; tested on dec 2 , reliable

    ;cmp r14, 0     ; uncomment to test, if reliable
                    ; tested on dec 2 , reliable

    ;cmp r15, 0     ; uncomment to test, if reliable
                    ; tested on dec 2 , reliable

    je exit_programm      ; now lets see if r8 is reliable! 


    jmp my_loop


sys_write_string_index_in_rax: 

    push rax
    mov rax, 1 
    mov rdi, 1
    pop rsi
    mov rdx, 1
    syscall

    ret

exit_programm:
    mov rax, 60
    mov rdi ,0 
    syscall
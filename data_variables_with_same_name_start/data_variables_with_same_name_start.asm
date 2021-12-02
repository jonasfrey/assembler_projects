
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


;# registers
;|name/use       |64-bit     |32-bit     |16-bit     |8-bit High/Low (H/L)       |
;|---            |---        |---        |---        |---                        |
;|accumulator    |rax        |eax        |ax         |ah/al                      |
;|counter        |rcx        |ecx        |cx         |ch/cl                      |
;|data           |rdx        |edx        |dx         |dh/dl                      |
;|base           |rbx        |edx        |bx         |bh/bl                      |

section .data 


    ; if you have two variables, starting wiht
    ; the same name 

    my_super_text_short db 10
    my_super_text_reallylong db "2"

    ;the one with the shorter name has to be 
    ;defined earlier



section .text 

    global _start 

_start: 

    call my_function
    mov rax, 60 
    mov rdi, 0 
    syscall


my_function:
    mov rax, 1 
    mov rdi, 1 
    mov rsi, my_super_text_reallylong
    mov rdx, 1
    syscall

    mov rax, 1 
    mov rdi, 1 
    mov rsi, my_super_text_short
    mov rdx, 1
    syscall
    
    ret



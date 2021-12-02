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

    my_single_byte_variable db "+"          ; can be any character, is going
                                            ; to be overwritten anyway
                                            ; ! 
section .text 

global _start

_start: 

    mov rcx, 0; our infinity coutner to loop over

_loop_this: 

    inc rcx         ; you maybe think
                    ; this will increment rcx every time like 
                    ; 0,1,2,3,4,5,6....
                    ; but if you do a syscall it will be overwritten somehow!

    mov rax, 1 
    mov rdi, 1
    mov rsi, my_single_byte_variable
    mov rdx, 1 
    syscall                ; attention  rcx will get overwritten when doing a syscall   

    jmp _loop_this

    ; end of programm
    mov rax, 60
    mov rdi, 0
    syscall 
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

    my_single_byte_variable db " "          ; can be any character, is going
                                            ; to be overwritten anyway
                                            ; ! 
    animation_string db "/|\\-"

    a_new_line_char db 10
section .text 

global _start

_start: 


_reset_rdx: 
    mov rdx, 0; our infinity coutner to loop over
    jmp _return_reset_rdx

_loop_this: 

    inc rdx

    cmp rdx, 5
    je _reset_rdx; jump equal       ; BL = BH
_return_reset_rdx:
    push rdx

    mov bl, byte [animation_string+rdx]
    mov byte [my_single_byte_variable], bl

    mov rax, 1
    mov rdi, 1
    mov rsi, my_single_byte_variable
    mov rdx, 1 
    syscall

    
    mov rax, 1 
    mov rdi, 1
    mov rsi, a_new_line_char
    mov rdx, 1 
    syscall

    pop rdx
    
    jmp _loop_this

    ; end of programm
    mov rax, 60
    mov rdi, 0
    syscall 
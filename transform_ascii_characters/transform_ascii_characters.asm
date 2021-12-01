
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


SECTION .data                     ; Section containing initialized data
    some_text:          db "this is a text..."
    some_text_upper:    db "HELLOMYNAMEISWHAT"

    only_a_newline:    db 10



SECTION .text                     ; Section containing code

global _start                     ; Linker needs this to find the entry point!

_start:
    
    mov rbx, some_text
    mov rcx, some_text_upper
    ;use gdb to check whats inside rbx 
    ; $ info registers rbx
    mov rax, 17 ; the length of the string "this is a text..."

my_loop:

    test rax, 1
    jnz rax_is_odd
    add byte [rcx], 32 ; add 32 to transform the letters to lowercase 
rax_is_odd:   
    inc rcx

    sub byte [rbx], 32 ; subtract 32 to transform the letters to uppercase, since in ascii table "A" is decimal 65 and "a" is decimal 97 (65+32) 
    inc rbx         ; dont know yet why 
    
    dec rax         ; decrement rax, until rax is 0
    jnz my_loop     ; jump if rax is zero 


    mov rax, 1 
    mov rdi, 1
    mov rsi, some_text
    mov rdx, 17
    syscall 

    call print_new_line

    mov rax, 1 
    mov rdi, 1
    mov rsi, some_text_upper
    mov rdx, 17
    syscall

print_new_line: 
    
    mov rax, 1 
    mov rdi, 1
    mov rsi, only_a_newline
    mov rdx, 1
    syscall 
    ret

exit:
    mov rax, 60                   ; Code for exit syscall
    mov rdi, 0                    ; Return a code of zero
    syscall                       ; Make kernel call



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

    my_dynamic_string db " hello i am a string", 10, 0     ; we need a zero as null terminator at the end
    my_dynamic_string2 db " me too! ", 10, 0               ; 0 is null terminator

section .text 

    global _start

_start: 

    mov rax, my_dynamic_string
    call print_rax_string

    mov rax, my_dynamic_string2
    call print_rax_string

    ; end the programm 
    mov rax, 60
    mov rdi, 0 
    syscall

print_rax_string: 

    mov rbx, 0 
    push rax        ; push start index of string onto stack

    ; first we count the string length 
    
print_rax_string_loop:
    inc rax             ; increment start index of string
    inc rbx             ; increment loop counter for length

    mov cl, [rax]       ; mov value into bl
    
    cmp cl, 0
    jg print_rax_string_loop

    ; then we print the string

    mov rax, 1 
    mov rdi, 1 
    pop rsi         
    mov rdx, rbx    ; rbx holds the length of the string now
    syscall 

    ret
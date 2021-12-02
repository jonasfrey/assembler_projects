
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


; imagine the ram is acutally a huuuge array
;|address (index)|content|
;|---|---|
;|0|2342|
;|1|50|
;|2|22|
;|3|10395|
;|4|50|
;|5|50|
;|...|---|
;|4000000(if 4gb)|---|

section .data 

    this_is_a_string: db "my name is..."
    a_free_variable: db '0'

section .bss
    a_reserved_free_byte resb 1

section .text 

global _start


;# registers
;|name/use       |64-bit     |32-bit     |16-bit     |8-bit High/Low (H/L)       |
;|---            |---        |---        |---        |---                        |
;|accumulator    |rax        |eax        |ax         |ah/al                      |
;|counter        |rcx        |ecx        |cx         |ch/cl                      |
;|data           |rdx        |edx        |dx         |dh/dl                      |
;|base           |rbx        |edx        |bx         |bh/bl                      |

_start: 

    ;mov rbx, 65

    ;mov a_reserved_free_byte, rbx

    ;mov rbx, this_is_a_string           ; we have now a pointer, index 5 
    ;mov rcx, [rbx]                      ; now we access the array at index 5
    ;mov rcx, [rbx]                 ; we should always say how big the value is 
                                        ; so we say it is one byte big

    ;mov [a_free_variable], byte [rbx]
    ;lea rcx, a_reserved_free_byte
    
                                                ; the following does not work
                                                ; because we need to use a 8bit register
                                                ; i dont know why exactly 
                                                ; but it is the case  
    ;mov rbx, byte [this_is_a_string+1] 
    ;mov byte [a_free_variable], rbx	


    ;mov bl, byte [this_is_a_string+1] 
    ;mov byte [a_free_variable], bl	
    ;
    ;mov rax, 1 
    ;mov rdi, 1 
    ;mov rsi, a_free_variable
    ;mov rdx, 1 
    ;syscall


    mov rbx, this_is_a_string ; moving the start index of this_is_a_string 
    mov bl, rbx
    mov byte [a_free_variable], bl	
    
    mov rax, 1 
    mov rdi, 1 
    mov rsi, a_free_variable
    mov rdx, 1 
    syscall



    ; end the programm
    mov rax, 60
    mov rdi, 0
    syscall
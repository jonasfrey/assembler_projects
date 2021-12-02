
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
    my_custom_string1 db "hello i am a string",10,0      ; we still have to manually add the null terminator byte
    my_custom_string2 db "me also !! ",10,0      ; we still have to manually add the null terminator byte
    my_custom_string3 db "is UTF 8 Working ? 😃",10,0      ; we still have to manually add the null terminator byte
    my_custom_string4 db ":< not ? ! to bad",10,0      ; we still have to manually add the null terminator byte
    my_custom_string5 db "🥞🐶🍁or yesss!!! ",10,0      ; we still have to manually add the null terminator byte

    my_single_byte_string db " "    ; used as a placeholder

section .text 

global _start

_start: 

    mov rax, my_custom_string1
    call print_string_in_rax

    mov rax, my_custom_string2
    call print_string_in_rax

    mov rax, my_custom_string3
    call print_string_in_rax

    mov rax, my_custom_string4
    call print_string_in_rax

    mov rax, my_custom_string5
    call print_string_in_rax

    mov rax, 60
    mov rsi, 0 
    syscall


print_string_in_rax: 
    ;mov rbx, rax        ;mov start index of string into rbx

loop: 

    mov cl, [rax]                   ; value into cl 
    mov [my_single_byte_string], cl ; cl into value

    cmp cl, 0 
    je return_print_string_in_rax

    inc rax
    
    push rax

    mov rax, 1 
    mov rdi, 1 
    mov rsi, my_single_byte_string
    mov rdx, 1
    syscall 
    
    pop rax

    jmp loop

return_print_string_in_rax:
    ret

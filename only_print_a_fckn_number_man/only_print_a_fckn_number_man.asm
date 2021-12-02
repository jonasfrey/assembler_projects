
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


section .bss 
    digit_space resb 100        ; resb -> reserve bytes
                                ;digit_space_position 
                                ; is where we actually 
                                ;store the string

    digit_space_position resb 8 ; 8 bytes is 8*8bits = 64 bits

section .data 
    decimal_in_ascii_for_number_zero equ 48                 ; equ stores the number and not the number of the char
    decimal_in_ascii_for_number_zero_define_bytes db '0'   ; this would not work
    ;decimal_in_ascii_for_number_start BYTE 48       ; the decimal number for a '0' character in the ascii table
    single_byte_string db "."                       ; placeholder, is going to be replaced

section .text

    global _start


_start: 

    mov rax, 5                          ; move single digit into rax register
    call print_rax_single_digit_number  ; call the procedure 

    mov rax, 2                          ; move single digit into rax register
    call print_rax_single_digit_number  ; call the procedure 

    mov rax, 9                          ; move single digit into rax register
    call print_rax_single_digit_number  ; call the procedure 

    mov rax, 9                          ; move single digit into rax register
    call print_rax_single_digit_number  ; call the procedure 

    mov rax, 60
    mov rdi, 0
    syscall


print_rax_single_digit_number: 

    ;add rax, decimal_in_ascii_for_number_zero
    add rax, decimal_in_ascii_for_number_zero_define_bytes

    ;# registers
    ;|name/use       |64-bit     |32-bit     |16-bit     |8-bit High/Low (H/L)       |
    ;|---            |---        |---        |---        |---                        |
    ;|accumulator    |rax        |eax        |ax         |ah/al                      |
    ;|counter        |rcx        |ecx        |cx         |ch/cl                      |
    ;|data           |rdx        |edx        |dx         |dh/dl                      |
    ;|base           |rbx        |edx        |bx         |bh/bl                      |

    mov [single_byte_string], al        ; mov al , which is the lowes 8 bit of rax, into value 
                                        ; because single_byte_string is also only one byte

    mov rax, 1 
    mov rdi, 1
    mov rsi, single_byte_string     ; pass the index of the string
    mov rdx, 1                      ; pass the length to print
    syscall
    
    ret

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

; math operations 

section .data 
    dec_number_where_zero_starts_in_ascii equ 48        ; The 'EQU' or 'equ' directive gives a symbolic name to a numeric constant, 
                                                        ; a register-relative value or a 
                                                        ; PC-relative value.


    single_byte_newline_char db 10
    single_byte_placeholder_string db "."
    

section .text 

    global _start

_start: 


    ; to add numbers we can use add register, number
    ; add rax, 5  => rax = rax + 5
    mov rax, 0 
    add rax, 7
    call custom_print_num_rax

    mov rax, 0
    add rax, 2
    add rax, 3
    call custom_print_num_rax

    mov rax, 7 
    sub rax, 3
    call custom_print_num_rax


    ; mul register => rax = rax * register
    ;mov rbx, 2 
    ;mul rbx             ; rax = rax * rbx => rax = 34 * 2 

    mov rax, 2
    mov rbx, 4 
    mul rbx
    call custom_print_num_rax

    ; 5 / 2 = (2.5 ) 2, rest 1
    ; remainder will be in rdx 
    mov rax, 5
    mov rbx, 2 
    div rbx 

    
    call custom_print_num_rax
    
    mov rax, 9 
    mov rbx, 2
    div rbx             ; 9 % 3 -> 0 
                        ; rdx will be 0
    mov rax, rdx
    
    call custom_print_num_rax


    ; shift bits to right 
    ; 0111 -> 0011 , shr 1
    mov rax, 7 
    shr rax, 1 
    call custom_print_num_rax

    ; shift bits to left 
    ; 0011 -> 0110, shl 1
    mov rax, 3 
    shl rax, 1
    call custom_print_num_rax


    mov rax, 60
    mov rdi, 0
    syscall 

custom_print_num_rax: 
    ; printing single digit num
    add rax, dec_number_where_zero_starts_in_ascii             ; since the dec_number_where_zero_starts_in_ascii is a constant
                                                                ; the value is retrieved by just writing the constant name
                                                                ; no brackets are neccessary ! 
                                                                ; ~~[dec_number_where_zero_starts_in_ascii]~~

    mov [single_byte_placeholder_string], rax
    mov rax, single_byte_placeholder_string
    call print_rax_single_byte_string
    ret 
print_rax_single_byte_string:

    push rax
    mov rax, 1 
    mov rdi, 1 
    pop rsi
    mov rdx, 1
    syscall

    mov rax, 1 
    mov rdi, 1 
    mov rsi, single_byte_newline_char
    mov rdx, 1
    syscall
    
    ret
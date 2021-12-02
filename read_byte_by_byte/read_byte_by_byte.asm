
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

section .bss
    base_64_table_mapping_array: db "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    my_byte resb 1 ; resb -> reserve bytes 


section .data 

    dec_number_where_zero_starts_in_ascii equ 48
    
    single_byte_newline_char db 10
    single_byte_placeholder_string db "."

    text_all_input_was_taken db  "all input was taken!"   ; db -> define bytes
    text_reading_another_byte db "reading another byte"

section .text
    global _start

_start:

reset_rbx: 
    mov rbx, 0

my_byte_reading_loop:
    
    push rbx
    cmp rbx, 3
    je reset_rbx
    mov rax, rbx 
    call custom_print_num_rax

    
    mov rax, 0 ; ID for getting user input
    mov rdi, 0 ; read from 0-> standard input stdin
    mov rsi, my_byte ; where it is going to store the data 
    mov rdx, 1 ; the length of input we wanna get 
    syscall

    mov rax, [my_byte]
    
    pop rbx ;   rbx is counter 0, 1 , 2
    mov rax, 2
    mul rbx     ; 2 * counter, 2*0, 2*1, 2*2
    add rax, 2  ; formula is 2 + 2*0 = 2, 2 + 2*1 = 4 , 2 + 2*2 = 6
                ;rax holds now the amount of how many bits we have to shfit to the right
    
    push rbx    ; push counter back

    mov rbx, [my_byte] ; the readed byte we have to shift

    shr rbx, rax    ;shift the byte by 2, 4, or 6
                    ; rbx holds now the b64 decimal value
     
    mov byte [single_byte_placeholder_string],  [base_64_table_mapping_array+rbx]
    ; now print the value
    
    ; start dbg
    ;push rax
    ;mov rax, 1 
    ;mov rdi, 1 
    ;mov rsi, my_byte
    ;mov rdx, 1
    ;syscall
    ;pop rax 
    ;end dbg

    pop rbx
    inc rbx 

    cmp rax, 0
    je byte_is_null ; zero terminator byte ! 

    jmp my_byte_reading_loop

byte_is_null:

    mov rax, 1 
    mov rdi, 1 
    mov rsi, text_all_input_was_taken
    mov rdx, 20
    syscall

    ;end programm
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
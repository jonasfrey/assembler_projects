
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
;|dont know      |rsi        | esi       | si        |?/sil                       |
;|dont know      |rdi        | edi       | di        |?/dil                       |
;|dont know      |rbp        | ebp       | bp        |?/bpl                       |
;|dont know      |rsp        | esp       | sp        |?/spl                       |
;|dont know      |r8         | r8d       | r8w       |?/r8b                       |
;|dont know      |r9         | r9d       | r9w       |?/r9b                       |
;|dont know      |r10        | r10d      | r10w      |?/r10b                      |
;|dont know      |r11        | r11d      | r11w      |?/r11b                      |
;|dont know      |r12        | r12d      | r12w      |?/r12b                      |
;|dont know      |r13        | r13d      | r13w      |?/r13b                      |
;|dont know      |r14        | r14d      | r14w      |?/r14b                      |
;|dont know      |r15        | r15d      | r15w      |?/r15b                      |
; to debug
; gdb my_filename 
; run < mytextfilewithinput.txt

section .bss
    my_byte resb 1 ; resb -> reserve bytes

section .data 
    base_64_table_mapping_array: db "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    dec_number_where_zero_starts_in_ascii equ 48

    single_byte_placeholder_string db "."
    single_byte_equal_sumbol_string db "="

section .text
    global _start

_start:
    mov r14, 0          ; r14 as a counter, which gets resetted like a modulo, 0, 1, 2, 0, 1, 2, 0, 1, 2....  
    mov r8, 0           ; last my_byte

my_byte_reading_loop:
    
    ; counter has to be reset at beginning ! 
    cmp r14, 3
    je reset_byte_modulo_counter_r14
return_reset_byte_modulo_counter_r14:

                            ; reading the byte, if zero exit, else 
    mov rax, 0              ; ID for getting user input
    mov rdi, 0              ; read from 0-> standard input stdin
    mov rsi, my_byte        ; where it is going to store the data 
    mov rdx, 1              ; the length of input we wanna get 
    syscall
    

    cmp rax, 0          ; r13 holds rax result of sys_read
    je byte_is_null     ; last byte was read

    ; it seems like, if sys reading is done, the last byte is stuck in my_byte
    ; after testing in ./../reading_bytes.asm i can confirm it
    mov r10b, [my_byte]       ; r10 current my_byte


    mov r13, rax            ; mov read byte into r13
    
    ;mov rax, 5
    ;call custom_print_num_rax ; dbg

    
    call convert_current_byte


    cmp r14, 2      ; our counter 0             1           2           0
                    ; so every    ^1st byte`    ^2nd byte   ^3rd byte   ^4th byte... and so on

    je do_every_third_loop
return_do_every_third_loop:

    mov r8, r10       ; mov my_byte into last byte
    inc r14              ; increase byte counter 

    jmp my_byte_reading_loop



do_every_third_loop: 

    ;push rax                                    ; dbg
    ;mov rax, 43                                 ; dbg
    ;mov [single_byte_placeholder_string], al    ; dbg
    ;call print_single_byte_placeholder_string   ; dbg
    ;pop rax                                     ; dbg


                    ; every 3rd, loop we have to also get the b64 dec value for the current byte
                    ; by masking the last 6 bits 
                    ; for example 
                    ; 1011 1111 is current byte
                    ;   ^^ ^^^^ is what we want
    mov rbx,63      ; r10 -> 0011 1111 , bitmask 
    mov rax, r10 
    and rax, rbx 
                    ; r12 holds now the base64 dec value for the current current byte

    mov cl, byte [base_64_table_mapping_array+rax]
    mov [single_byte_placeholder_string], cl

    call print_single_byte_placeholder_string

    jmp return_do_every_third_loop

reset_byte_modulo_counter_r14:
    mov r14, 0
    jmp return_reset_byte_modulo_counter_r14


byte_is_null:

    ;push rax                                    ; dbg
    ;mov rax, 48                                 ; dbg
    ;add rax, r14                                ; dbg
    ;mov [single_byte_placeholder_string], al    ; dbg
    ;call print_single_byte_placeholder_string   ; dbg
    ;pop rax                                     ; dbg

    ; r14 counter will be incremented already
    cmp r14, 0      ; if 0 do not add equal symbols = 
    je exit_program 

    jne handle_rest_in_byte
return_handle_rest_in_byte: 

                     ; rbx counter is now 1 or 2 
    ;                ; 'formula' for number of equal signs at end, only if counter is 1 or 2  
    ;                ; n_equals = 3 - counter 
    
    
    mov r12, 3            
    sub r12, r14
    mov rax, r12
    call print_equal_symbols_n_times_by_rax
    jmp exit_program

handle_rest_in_byte:
    
    push rbx
    push r14 
    ; the counter is 'falsly' to high 
    dec r14
    mov rax, 2
    mul r14     ; 2 * counter, 2*0, 2*1, 2*2
    add rax, 2  ; formula is 2 + 2*0 = 2, 2 + 2*1 = 4 , 2 + 2*2 = 6
    ;            ;rax holds now the amount of how many bits we have to shfit to the rightc
    mov rbx, 6
    sub rbx, rax    ; 6 - 2 = 4, or  6-4 = 2
                    ; rbx holds now shiftleft for rest
    shl r10b, 4 
    
    mov rbx,63      ; r10 -> 0011 1111 , bitmask 
    and r10, rbx     ; our r9 holds now the base64 decimal value, for the current (last) byte

    mov cl, [base_64_table_mapping_array+r10]
    mov [single_byte_placeholder_string], cl
    mov rax, single_byte_placeholder_string
    call print_single_byte_placeholder_string

    pop r14
    pop rbx

    jmp return_handle_rest_in_byte

exit_program:
    
    ; print terminator byte?
    ; mov [single_byte_placeholder_string], byte 0
    ; call print_single_byte_placeholder_string
    ; end print terminator byte

    ;end programm
    mov rax, 60
    mov rdi, 0
    syscall

print_equal_symbols_n_times_by_rax:
    
    dec rax
    push rax
    mov r12, [single_byte_equal_sumbol_string]
    mov [single_byte_placeholder_string], byte 61
    call print_single_byte_placeholder_string

    pop rax
    cmp rax, 0
    jg print_equal_symbols_n_times_by_rax 
    
    ret
    
custom_print_num_rax: 
    ; printing single digit num
    add rax, dec_number_where_zero_starts_in_ascii             ; since the dec_number_where_zero_starts_in_ascii is a constant
                                                                ; the value is retrieved by just writing the constant name
                                                                ; no brackets are neccessary ! 
                                                                ; ~~[dec_number_where_zero_starts_in_ascii]~~

    mov [single_byte_placeholder_string], rax
    call print_single_byte_placeholder_string
    ret 


print_single_byte_placeholder_string:

    push rax 
    push rdi 
    push rsi 
    push rdx 

    mov rax, 1 
    mov rdi, 1 
    mov rsi, single_byte_placeholder_string
    mov rdx, 1
    syscall
    
    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret

convert_current_byte:

    mov rax, 2
    mul r14     ; 2 * counter, 2*0, 2*1, 2*2
    add rax, 2  ; formula is 2 + 2*0 = 2, 2 + 2*1 = 4 , 2 + 2*2 = 6
                ;rax holds now the amount of how many bits we have to shfit to the rightc
    
    mov r9, r8      ; mov last my_byte into r9
    shl r9, 8       ; 0000 0000 1111 1111 -> 1111 1111 0000 0000
    push r10
    or r9, r10
    pop r10          
                    ; perform a bitwise or, to merge last my_byte and my_byte
                    ; r9 holds now our 16 bit byte, for example
                    ; 1010 0101     1100 1001
                    ; ^ l my_byte   ^ my_byte

                    ; now we can shift our 16 bit, depenging on counter
    mov rcx, rax
    shr r9, cl       ; 
    
    mov rbx,63      ; r10 -> 0011 1111 , bitmask 
    and r9, rbx     ; our r9 holds now the base64 decimal value, for the current (last) byte

    mov cl, [base_64_table_mapping_array+r9]
    mov [single_byte_placeholder_string], cl
    mov rax, single_byte_placeholder_string
    call print_single_byte_placeholder_string

    ret 

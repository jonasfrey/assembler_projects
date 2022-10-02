
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
;|dont know      |rsi        |esi        |si        |?/sil                       |
;|dont know      |rdi        |edi        |di        |?/dil                       |
;|dont know      |rbp        |ebp        |bp        |?/bpl                       |
;|dont know      |rsp        |esp        |sp        |?/spl                       |
;|dont know      |r8         |r8d        |r8w       |?/r8b                       |
;|dont know      |r9         |r9d        |r9w       |?/r9b                       |
;|dont know      |r10        |r10d       |r10w      |?/r10b                      |
;|dont know      |r11        |r11d       |r11w      |?/r11b                      |
;|dont know      |r12        |r12d       |r12w      |?/r12b                      |
;|dont know      |r13        |r13d       |r13w      |?/r13b                      |
;|dont know      |r14        |r14d       |r14w      |?/r14b                      |
;|dont know      |r15        |r15d       |r15w      |?/r15b                      |

section .data 
    one_byte_aka_byte db "."
    two_bytes_aka_word db ".."
    four_bites_aka_double_word db "...."
    utf_8_char_emoji_grinning_smiley db "😀"            ; the binary for grinning smiley is 
                                                        ; 11110000 10011111 10011000 10000000
                                                        ; so 4 bytes, or a double word
section .text 

global _start 


_start: 

    mov [one_byte_aka_byte], byte 65
    mov rax, 1
    mov rdi, 1 
    mov rsi, one_byte_aka_byte
    mov rdx, 1
    syscall

    ;mov rdx, 410                ; 410 is higher than max 8bit value , 2^8 = 256 
    ;mov [one_byte_aka_byte], rdx
    ;
    ;mov rax, 1
    ;mov rdi, 1
    ;mov rsi, one_byte_aka_byte
    ;mov rdx, 1
    ;syscall

    ; Ö Latin Capital Letter O with Diaeresis, U+00D6, dec 50070, bin   1100 0011   1001 0110
    ;                                                                   1.byte 195d 2.byte 150d

    ;mov rax, 50070                     ; 50070 is higher than max 8bit value , 2^8 = 256 
    ;mov word [two_bytes_aka_word], word rax
                                        ; throws an error 'register size specifiaction ignored'
    
    ;|64-bit     |32-bit     |16-bit     
    ;|---        |---        |---        
    ;|rax        |eax        |ax         
    ;|rcx        |ecx        |cx         
    ; maybe we have to use ax register 
    
    mov ax, 50070
    mov [two_bytes_aka_word], ax
                                        ; no error anymore...
    mov rax, 1
    mov rdi, 1 
    mov rsi, two_bytes_aka_word
    mov rdx, 2
    syscall                             ;... but not printing Ö


    mov al, 195         ; most left utf8 byte
    mov bl, 150         ; second utf8 byte
    
    mov [two_bytes_aka_word], al
    mov [two_bytes_aka_word+1], bl
    mov rax, 1
    mov rdi, 1 
    mov rsi, two_bytes_aka_word
    mov rdx, 2
    syscall                             ;there we go !!!


                                        ;but can it do little enian??
    mov [two_bytes_aka_word+1], al
    mov [two_bytes_aka_word], bl

    mov rax, 1
    mov rdi, 1 
    mov rsi, two_bytes_aka_word
    mov rdx, 2
    syscall
                                        ;of course not ... 

    ; printing utf 8 character


    mov rax, 1
    mov rdi, 1 
    mov rsi, utf_8_char_emoji_grinning_smiley
    mov rdx, 4                                          ; we have to mov 4 bytes into rdx because:
                                                        ; the binary utf_8_char_emoji_grinning_smiley is 
                                                        ; 11110000 10011111 10011000 10000000
                                                        ; so 4 bytes, or a double word
    syscall


    ;mov rax, 1
    ;mov rdi, 1 
    ;mov rsi, utf_8_char_emoji_grinning_smiley
    ;mov rdx, 2                                          ; what happens if we dont do it?
                                                        ; it will print a invalid character:
                                                        ; � 
    ;syscall
    mov rax, 60 
    mov rdi, 0
    syscall


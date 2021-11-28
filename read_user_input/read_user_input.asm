
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


section .data 
    text1 db "give me your name:"; 18 characters long
    text2 db "alright, your name is :" ; 23 characters long


section .bss 
    name resb 16 ; resb ->reserve bytes, this will reserve 16 bytes


section .text 
    global _start 


_start: 
    call _printText1 
    call _getName
    call _printText2 
    call _printName

    mov rax, 60 
    mov rdi, 0 
    syscall 


_printText1:
    mov rax, 1
    mov rdi, 1 
    mov rsi, text1
    mov rdx, 18
    syscall
    ret

_printText2:
    mov rax, 1
    mov rdi, 1 
    mov rsi, text2
    mov rdx, 23
    syscall
    ret

_printName: 
    mov rax, 1 
    mov rdi, 1 
    ;mov rsi, ' ',name  ; why is string concatenation here not possible ? 
    mov rsi, name 
    mov rdx, 16 ; maximum is 16 bytes because we reserve bytes 16 resb 16
    syscall 
    ret 

_getName: 
    mov rax, 0      ; get user input is 0 
    mov rdi, 1      ; rdi 0 = standard input stdin
                    ; rdi 1 = standard outpu stdout
                    ; rdi 2 = standard error stderr
    mov rsi, name
    mov rdx, 16     ; since we reserved bytes resb 16
    syscall 
    ret 

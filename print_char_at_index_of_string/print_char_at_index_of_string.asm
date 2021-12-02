
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

section .bss

    my_byte resb 1          ; we need to reserve a byte !

section .text 

section .data

    my_var db "0123456789"


global _start 


_start:

    ; now to get the index of the first byte of my_var 
    ; we can access it like so 

    mov rcx, my_var         ; we move the index, which is a number between
                            ; 0 and 32GB(depending on how much ram we have)
                            ; 0 and 256 000 000 000 (if 32 gb ram)
                            ; we move it into cax
    // mov rcx, byte[rcx]

    mov rax, 1
    mov rsi, 1 
    mov rdi, byte [rcx]                  ; now to get the contents at the index 
                                    ; we can access it with [index]
            
    mov rdx, 1
    syscall 


    mov rax, 60
    mov rsi, 1
    syscall
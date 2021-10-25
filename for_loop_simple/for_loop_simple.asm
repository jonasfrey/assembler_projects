
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

global _start

section .data

a_string: db "yes indeed"

section .text 



_start:

        xor cx,cx   ; cx-register is the counter, set to 0
loop1   nop         ; Whatever you wanna do goes here, should not change cx
        inc cx      ; Increment
        mov       rax, 1 ; syscall for write
        mov       rdi, 1                  ; file handle 1 is stdout
        mov       rsi, a_string            ; address of string to output
        mov       rdx, 10                 ; number of bytes
        syscall                           ; invoke operating system to do the write
        cmp cx,5    ; Compare cx to the limit
        jle loop1   ; Loop while less or equal
        
        mov       rax, 60                 ; system call for exit
        xor       rdi, rdi                ; exit code 0
        syscall
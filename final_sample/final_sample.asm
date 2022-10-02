;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

section .bss; section containing uninitalized data 
BUFFLEN equ 16 ; we read 16 bytes at a time
Buff: resb BUFFLEN ; text buffer itself
section .data ; section containing data
str1 db "Hello WorLD" 
STRLEN equ $-str1
section .text
global _start: 
_start:
not: 
mov rsi, str1
;mov rsi, [str1]
mov rbx, STRLEN
mov rcx, 0
mov rdx, 0
.loop: 
mov al, [rsi]
cmp rax, 'a'
jb .cl
jmp .next
.cl: 
inc rdx
.next:
inc rsi
inc rcx 
dec rbx
jnz .loop


;rax = ?
;rbx = ?
;rcx = ? 
;rdx = ?

mov rax, 60 
mov rdi, 0 
syscall

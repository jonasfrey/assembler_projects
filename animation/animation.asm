
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


    global _start

    section .text 
; _start:  
;     mov rax, 4 // syscall sys_write
;     mov rbx, 1 // stdout
;     mov rcx, s_message
;     mov rdx, n_bytes_s_message
;     syscall



;     mov rax, 60 ; moves the sys_exit into register rax 
;     xor rdi, rdi ; compares rdi and rdi , sets rdi to 0 if rdi and rdi are same 
;     syscall
_start:   
        ; mov     rcx, 10
        ; location_1:

        ;   mov       rax, 1                  ; system call for write
        ;   mov       rdi, 1                  ; file handle 1 is stdout
        ;   mov       rsi, s_message          ; address of string to output
        ;   mov       rdx, n_bytes_s_message  ; number of bytes
        ;   syscall                           ; invoke operating system to do the write
        ;   mov       rax, 60                 ; system call for exit
        ;   xor       rdi, rdi                ; exit code 0
        ;   syscall                           ; invoke operating system to exit

        ; dec     rcx
        ; cmp rcx, 3
        ; je     location_1

    mov rax, 100000
    mov rsi, s_message
    mov       rdx, n_bytes_s_message  ; number of bytes

    ep_loop:
    dec rax 

    ;; if rax % 10 != 0 jump to ep_loop
    ; push rax 

    mov edx,0 ; clear dividend, high
    mov eax,rax ; dividend, low
    mov ecx,10 ; divisor
    div ecx ; 300/25, EAX = 12, EDX = 0

    ; pop rax

    cmp edx, 0
    jne ep_loop

    push rax
    mov       rax, 1                  ; system call for write
    mov       rdi, 1                  ; file handle 1 is stdout
    mov       rsi, s_message          ; address of string to output
    mov       rdx, n_bytes_s_message  ; number of bytes
    syscall ; make syscall to execute 
    pop rax

    jnz ep_loop




section .data 

    s_message: db    "l","ol ", "y", 69 , "s!", 10   ;; db  = define bytes 
    ; n_bytes_s_message:  4 
    n_bytes_s_message equ  $ - s_message 


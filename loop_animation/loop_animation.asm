
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


section .data
var_string: db 'A'
white_space_char: db ' '
new_line_char: db 10
section .text 
global _start


_start:

    mov rax, 1 
    mov rdi, 1

    mov rbx, 1000
    mov eax, 1
y_loop:
    ;mov rsi, 65 ; not working dont knwo why
    ;mov rsi, 0x41 ; not working dont know why 
    ;mov rsi, var_string ; but this is working 
    mov rdx, 1

    push rbx
    mov rbx, 10

is_equal:
    mov rsi, white_space_char ; but this is working 
    syscall
    dec rbx
    
x_loop:
    
    cmp rbx, 3
    je is_equal
    dec rbx
    jnz x_loop

    mov rbx, 400000000
sleep_loop:

    dec rbx
    jnz sleep_loop

    mov rsi, var_string
    syscall

    mov rsi, new_line_char
    syscall

    ;mov eax, rbx
    ; modulo -> eax = eax % 9
    ;xor edx,edx ;clear the destinations for outputs. this stops the garbage remainder  
    ;mov ecx, 9
    ;div ecx
    ;mov eax, edx

    pop rbx
    dec rbx
    jnz y_loop

    mov rax, 60 
    xor rdi, rdi
    syscall


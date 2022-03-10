
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

; nasm -f elf64 random_number.asm -o random_number.o
; ld -o random_number.o random_number -m elf_x86_64 
; ./random_number  
       
section .data 
    text_string db "Hello world", 10 ; db -> 'define bytes' and with the comma we can concatenate strings
                                ; the 10 is a ascii decimal 10 so the linefeed "\n"
                            ; 'text_string' is the variable name 

    address_of_vriable:  db  65; 65 = ascii A 
                
section .text 
    global _start

_start:

    L: rdrand eax
    jnc L

    add eax, 48
    mov [address_of_vriable], eax
    ; 'block' start
    mov rax, 1 
    mov rdi, 1 
    mov rsi, address_of_vriable
    mov rdx, 1
    syscall         ; this 'block' would be
                    ; sys_write(1, text, 12)
    ;'block' end


    ; 'block' start
    mov rax, 60
    mov rdi, 0      ;to exit to programm without error we load 0 into rdi  
    syscall         ; this block would be 'sys_exit(0)'
    ; 'block' end 



;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 


                        ; registers holds 64 bits 
                        ; registers can hold values between 0 - 2^64
                        
                        ; syscall can differ based on OS 
                        ; syscall are basic os 'functions'
                        
                        ; default registers for syscall id rax 
                        ; arguments used in the syscall have also a dedicated register

                        ; argument  Register
                        ; syscall ID    rax
                        ; 1             rdi
                        ; 2             rsi 
                        ; 3             rdx
                        ; 4             r10 
                        ; 5             r8
                        ; 6             r9  

                        ; some examples of syscall ids 

                        ; name      id      arg1              arg2    arg3    arg4 ...
                        ; sys_read  0       #filedescriptor   $buffer #count  -
                        ; sys_write 1       #filedescriptor   $buffer #count  -
                        ; sys_open  2       $filename         #flags  #count
                        ; sys_close 3       #filedescriptor
                        ; ...
                        ; pwritev2  328

                        ; how sys_write works  
                        ; 
                        ; argument type         argument description 
                        ; file descriptor       0 (standard input)
                        ;                       1 (standard outpur)
                        ;                       2 (standard error)
                        ; buffer                location of string to write 
                        ; count                 length of string 
                        
                        ; so to write 'Hello world\n'
                        ; rax 1, rdi 1, rsi ADDR, rdx 12



                        ; sections 
                        ; .data -> all the static data is defined here 
                        ; .bss -> not sure about this, reserve memory for dynamic stuff maybe 
                        ; .text -> the actual code 
                        
section .data 
    text_string db "Hello world", 10 ; db -> 'define bytes' and with the comma we can concatenate strings
                                ; the 10 is a ascii decimal 10 so the linefeed "\n"
                            ; 'text_string' is the variable name 
                            
section .text 
    global _start

_start:
    ; 'block' start
    mov rax, 1 
    mov rdi, 1 
    mov rsi, text_string
    mov rdx, 12
    syscall         ; this 'block' would be
                    ; sys_write(1, text, 12)
    ;'block' end

    ; 'block' start
    mov rax, 60
    mov rdi, 0      ;to exit to programm without error we load 0 into rdi  
    syscall         ; this block would be 'sys_exit(0)'
    ; 'block' end 



;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

                        ; argument  Register
                        ; syscall ID    rax
                        ; 1             rdi
                        ; 2             rsi 
                        ; 3             rdx
                        ; 4             r10 
                        ; 5             r8
                        ; 6             r9  

                        ; to read a file we can use 
                        ; the system call with ID 2 and 3 
                        ; how sys_open ID 2 works  
                        ; %rdi	                        %rsi	    %rdx
                        ; const char __user * filename	int flags	umode_t mode

                        ; or 
                        ; arg1 (rdi)        arg2 (rsi)          arg3 (rdx)
                        ; $filename         #flags              #mode
                        
                        ; here are the flags
                        ; flag name     value       log2(value)
                        ; O_RDONLY      0           null
                        ; O_WRONLY      1           0
                        ; O_RDWR        2           1
                        ; O_CREAT       64          6
                        ; O_APPEND      1024        10
                        ; O_DIRECTORY   65536       16
                        ; O_PATH        2097152     21
                        ; O_TMPFILE     4194304     22

                        ; how sys_close (ID 3) works 
                        ; arg1 (rdi)        
                        ; #filedescriptor         
                        

section .data 
    s_filename db 'my_test_file', 0     ; the filename of the file 
                                        ; at the end we need a null byte 
                                        ; because it has to be zero terminated!!


section .text 

    ; sys_open

    mov rax, 2              ; 2 is sys_open 
    mov rdi, s_filename     ; we defined this in the section .data 
    mov rsi, 0              ; 0 is the flag for O_RDONLY read only
    mov rdx, 0644o          ; the 'o' at the end tells NASM that this is an octal value
                            ; the 0644o is the file permission which does not really matter when 
                            ; only reading the file , but we need it anyway
    syscall 

    ; now sys_close
    mov rax, 3
    pop rdi                 ; this is the file descriptor of the file to close, 
                            ; it assumes it is on the top of the stack 
    syscall     
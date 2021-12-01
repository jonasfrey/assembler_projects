
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 



section .text 

global _start 

;# registers
;|name/use       |64-bit     |32-bit     |16-bit     |8-bit High/Low (H/L)       |
;|---            |---        |---        |---        |---                        |
;|accumulator    |rax        |eax        |ax         |ah/al                      |
;|counter        |rcx        |ecx        |cx         |ch/cl                      |
;|data           |rdx        |edx        |dx         |dh/dl                      |
;|base           |rbx        |edx        |bx         |bh/bl                      |



_start: 

    
    mov rcx, 5, 
    ; testing if rcx gets overwritten 
    mov ecx, 2
    ; is rcx still 5???


    ; use the debugger to find it out
    ; follow theese steps:
    ; $ gdb 
    ; $ layout next
    ; $ file the_name_of_the_binary
    ; $ break the_line_number_you_wanna_debug
    ; $ run
    ; $ n 
    ; to read out a register 
    ; $ info registers the_name_of_register
    ; or
    ; $ info regisers
    ; to step to the next instruction 
    ; $ n 
    ; or 
    ; $ next

    mov rax, 60
    mov rdi, 0
    syscall

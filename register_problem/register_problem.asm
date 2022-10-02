
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

;# registers
;|name/use       |64-bit     |32-bit     |16-bit     |8-bit High/Low (H/L)       |
;|---            |---        |---        |---        |---                        |
;|accumulator    |rax        |eax        |ax         |ah/al                      |
;|counter        |rcx        |ecx        |cx         |ch/cl                      |
;|data           |rdx        |edx        |dx         |dh/dl                      |
;|base           |rbx        |edx        |bx         |bh/bl                      |
;|dont know      |rsi        |esi        |si        |?/sil                       |
;|dont know      |rdi        |edi        |di        |?/dil                       |
;|dont know      |rbp        |ebp        |bp        |?/bpl                       |
;|dont know      |rsp        |esp        |sp        |?/spl                       |
;|dont know      |r8         |r8d        |r8w       |?/r8b                       |
;|dont know      |r9         |r9d        |r9w       |?/r9b                       |
;|dont know      |r10        |r10d       |r10w      |?/r10b                      |
;|dont know      |r11        |r11d       |r11w      |?/r11b                      |
;|dont know      |r12        |r12d       |r12w      |?/r12b                      |
;|dont know      |r13        |r13d       |r13w      |?/r13b                      |
;|dont know      |r14        |r14d       |r14w      |?/r14b                      |
;|dont know      |r15        |r15d       |r15w      |?/r15b                      |

section .data 

section .text 

global _start 


_start: 

    ;syscall
    mov rax, 60 
    mov rdi, 0
    syscall


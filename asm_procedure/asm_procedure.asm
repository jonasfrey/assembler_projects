;proc_name:
;   procedure body
;   ...
;   ret

;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

global _start

section .text


_start:
    mov rda, 1
    
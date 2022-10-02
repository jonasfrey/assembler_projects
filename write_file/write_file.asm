;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute.sh 

;file permissions 
; |desc    |   read|   write|  execute|    binary| decimal|
; |--------|-------|--------|---------|----------|--------|
; |nothing |      0|       0|        0|      b000|       0|
; |r       |      1|       0|        0|      b100|       4|
; |w       |      0|       1|        0|      b010|       2|
; |x       |      0|       0|        1|      b001|       1|
; |r w     |      1|       1|        0|      b110|       6|
; |r   x   |      1|       0|        1|      b101|       5|
; |  w     |      0|       1|        0|      b010|       4|
; |  w x   |      0|       1|        1|      b011|       3|
; |  w     |      0|       1|        0|      b010|       2|
; |r w x   |      1|       1|        1|      b111|       7|

; letter  notation
; - rwx --- rwx
; ^----------------------- directory or file 
;   ^                       owner
;       ^                   group
;           ^               all others

; dec number notation (example: 'chmod 777 my_file.txt' or 'chmod -R 557 my_folder')
; 777
; ^------------------------ owner
;  ^----------------------- group
;   ^---------------------- all others

section	.text
   global _start         ;must be declared for using gcc
	
_start:                  ;tell linker entry point
   ;create the file
   mov  eax, 8
   mov  ebx, file_name
   mov  ecx, 0777        ;read, write and execute by all
   int  0x80             ;call kernel
	
   mov [fd_out], eax
    
   ; write into the file
   mov	edx,len          ;number of bytes
   mov	ecx, msg         ;message to write
   mov	ebx, [fd_out]    ;file descriptor 
   mov	eax,4            ;system call number (sys_write)
   int	0x80             ;call kernel
	
   ; close the file
   mov eax, 6
   mov ebx, [fd_out]
    
   ; write the message indicating end of file write
   mov eax, 4
   mov ebx, 1
   mov ecx, msg_done
   mov edx, len_done
   int  0x80
    
   ;open the file for reading
   mov eax, 5
   mov ebx, file_name
   mov ecx, 0             ;for read only access
   mov edx, 0777          ;read, write and execute by all
   int  0x80
	
   mov  [fd_in], eax
    
   ;read from file
   mov eax, 3
   mov ebx, [fd_in]
   mov ecx, info
   mov edx, 26
   int 0x80
    
   ; close the file
   mov eax, 6
   mov ebx, [fd_in]
   int  0x80    
	
   ; print the info 
   mov eax, 4
   mov ebx, 1
   mov ecx, info
   mov edx, 26
   int 0x80
       
   mov	eax,1             ;system call number (sys_exit)
   int	0x80              ;call kernel

section	.data
file_name db 'myfile.txt'
msg db 'Welcome to Tutorials Point'
len equ  $-msg

msg_done db 'Written to file', 0xa
len_done equ $-msg_done

section .bss
fd_out resb 1
fd_in  resb 1
info resb  26

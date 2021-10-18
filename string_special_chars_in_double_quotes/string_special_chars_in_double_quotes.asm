
;  Author : created by script create_new_assembly_script.sh
;  Description     : empty assembler script 
;  to create Makefile, make, run all at once    : ./make_make_and_execute 



          global    _start

          section   .text
_start:   mov       rax, 1                  ; system call for write
          mov       rdi, 1                  ; file handle 1 is stdout
          mov       rsi, new_lines_test            ; address of string to output
          mov       rsi, utf8_smileys            ; address of string to output
          mov       rdx, 8                  ; number of bytes
          syscall                           ; invoke operating system to do the write
          mov       rax, 60                 ; system call for exit
          xor       rdi, rdi                ; exit code 0
          syscall                           ; invoke operating system to exit

          section   .data
new_lines_test:  db        "nl bslsh n \n nl bckslh r bckslhs n \n\r  ", "10 in dec", 10, "10 in hex (0xa)",0xa,"10 in bin 0b1010", 0b1010
outof_ascii_test:  db        "characters outside ascii >= 2^8 or 16*8: 0x81 to 0x89 -> " , 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88 , 0x89 
utf8_smileys:  db        "😀", "🤣", "🎮" , "🎸"

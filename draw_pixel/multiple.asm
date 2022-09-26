; compile and run 
; nasm -o multiple.com multiple.asm && dosbox multiple.com -exit
; help https://jbwyatt.com/253/emu/8086_bios_and_dos_interrupts.html

; INT 10h / AH = 0Ch - change color for a single pixel.

; input:
; AL = pixel color
; CX = column.
; DX = row.
; example:

; 	mov al, 13h
; 	mov ah, 0
; 	int 10h     ; set graphics video mode. 
; 	mov al, 1100b
; 	mov cx, 10
; 	mov dx, 20
; 	mov ah, 0ch
; 	int 10h     ; set pixel.


; mov al, 13h
; mov ah, 0
; int 10h     ; set graphics video mode. 
; mov al, 1010b   ; bits are 1     0     1     0    (binary) 
;                 ;          ?     red   green blue
; mov cx, 10
; mov dx, 20
; mov ah, 0ch
; int 10h     ; set pixel. 

; |name/use       |64-bit     |32-bit     |16-bit     |8-bit High/Low (H/L)       |
; |---            |---        |---        |---        |---                        |
; |accumulator    |rax        |eax        |ax         |ah/al                      |
; |accumulator    |rax        |eax        |ah         |ah/al                      |
; |counter        |rcx        |ecx        |cx         |ch/cl                      |
; |counter        |rcx        |ecx        |ch         |ch/cl                      |
; |data           |rdx        |edx        |dx         |dh/dl                      |
; |data           |rdx        |edx        |dh         |dh/dl                      |
; |base           |rbx        |edx        |bx         |bh/bl                      |
; |base           |rbx        |edx        |bh         |bh/bl                      |

;   ______________ ax ______________
;  /                                \
; +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
; |1|1|0|0|1|1|1|0|  |1|1|1|0|1|0|1|0| <- individual bits
; +-+-+-+-+-+-+-+-+  +-+-+-+-+-+-+-+-+
;  \____    _____/    \_____    ____/
;        ah                  al

mov al, 13h
mov ah, 0
int 10h     ; set graphics video mode. 


mov	bx, 320
mov cx, 1

L1:

; pop al
mov al, 1010b   ; bits are 1     0     1     0    (binary) 
                ;          ?     red   green blue
 
 ; generate random number 

mov ah, 0
int 01ah
push ax 

mov al, 13h
mov ah, 0
int 10h     ; set graphics video mode. 

pop ax
mov cl, al
mov al, cl
; mov al, 11111b

; end generate random number
inc cx
; mov cx, 10
mov dx, 10; dx = row 0

mov ah, 0ch
int 10h     ; set pixel. 

dec bx
cmp bx, 0
jne L1

  ; wait for any key and exit
    xor ah,ah
    int 16h
    ret
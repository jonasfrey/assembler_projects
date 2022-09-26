; compile and run 
; nasm -o drpxl.com drpxl.asm && dosbox drpxl.com -exit
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

mov al, 13h
mov ah, 0
int 10h     ; set graphics video mode. 


mov	cx, 300
push cx

L1:


CALL    waitforRetrace  ; destroys al, dx



mov al, 1010b   ; bits are 1     0     1     0    (binary) 
                ;          ?     red   green blue
pop cx ; cx = col i 
; mov dx, cx
mov dx, 0; dx = row 0
push cx
mov ah, 0ch
int 10h     ; set pixel. 

; ; start sleep
; top:   mov ax, 5555
; loopa: mov bx, 5555
; loopb: dec bx
;        jnc loopb
;        dec ax
;        jnc loopa

;        mov ah,2
;        mov dl,'A'
;        int 21
;        jmp top
; ; sleep end

pop cx
dec cx
jnz	L1

waitforRetrace:
    MOV     dx,03dah
waitforRetraceEnd:
    IN      al,dx
    AND     al,08h
    JNZ     waitforRetraceEnd
waitforRetraceStart:
    IN      al,dx
    AND     al,08h
    JZ      waitforRetraceStart
    RET

  ; wait for any key and exit
    xor ah,ah
    int 16h
    ret
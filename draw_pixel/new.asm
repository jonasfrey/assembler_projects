section .data


global _start

segment .code

_start: 
    mov ax, 13h 
    int 10h               ; switch to 320x200 mode

    mov ax, 0a000h        ; The offset to video memory
    mov es, ax            ; We load it to ES through AX,
                          ; because immediate operation
                          ; is not allowed on ES

;;;;;;;;;;;;;;;;;;;;;;

    mov ax, 10            ; Y coord
    mov bx, 20            ; X coord
    mov dl, 4
    call putpixel

    mov ax, 1             ; Y coord
    mov bx, 2             ; X coord
    mov dl, 4
    call putpixel

;;;;;;;;;;;;;;;;;;;;;;;;;

    xor ah, ah
    int 16h               ; keyboard (wait for key)

    mov ax, 3
    int 10h               ; go to text mode

    mov ax, 4c00h
    int 21h               ; return to DOS, exit code 0

;;;;;;;;;;;;;;;;;;;;;

putpixel:
    push dx               ; oops, mul changes dx too
    mov cx, 320
    mul cx                ; multiply Y (ax) by 320 (one row)
    add ax, bx            ; and add X (bx) (result= dx:ax)
    mov di, ax
    pop dx
    mov [es:di], dl       ; store color/pixel
    ret

;;;;;;;;;;;;;;;;;;;;;;
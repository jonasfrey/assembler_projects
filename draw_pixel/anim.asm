; compile and run 
; nasm -o anim.com anim.asm && dosbox anim.com -exit

    BITS    16

    MOV     ax,13h
    INT     10h             ; 320x200 256colour VGA mode
    MOV     ax,0a000h
    MOV     es,ax           ; video RAM segment

    XOR     bx,bx           ; square position = 0
    MOV     si,1            ; direction of movement

AnimateLoop:
    CALL    waitforRetrace  ; destroys al, dx
    ; clear whole screen
    XOR     di,di
    XOR     eax,eax
    MOV     cx,320*200/4
    REP STOSD
    ; draw 80x80 pixels square with color 3
    MOV     eax,0x03030303
    MOV     di,bx
    MOV     dx,80           ; height
drawSquareLoop:
    MOV     cx,80/4
    REP STOSD               ; draw 80 pixels (single line)
    ADD     di,320-80       ; next line address
    DEC     dx
    JNZ     drawSquareLoop
    ; move it left/right
    ADD     bx,si           ; move it first
    CMP     bx,240
    JB      AnimateLoop     ; 0..239 are OK
    ; too far on either side, reverse the movement
    NEG     si
    ADD     bx,si           ; fix position to valid range
    JMP     AnimateLoop

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

    times 510-($-$$) db 0   ; PadZeros:
    dw 0xaa55       ; MagicNumber

PUBLIC ReadFlags_asm

.686
.model flat, c
.code
ReadFlags_asm PROC
    pushfd       
    pop        eax
    ret

ReadFlags_asm ENDP

end
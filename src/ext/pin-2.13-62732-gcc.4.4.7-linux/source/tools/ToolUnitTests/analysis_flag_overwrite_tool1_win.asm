PUBLIC ReadWriteFlags_asm

.686
.model flat, c
.code
ReadWriteFlags_asm PROC
    pushfd       
    pop        eax
    mov        eax, 0
    add        eax, eax
    ret

ReadWriteFlags_asm ENDP

end
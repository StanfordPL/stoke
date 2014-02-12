PUBLIC GetEspBeforeCalled

.686
.model flat, c
ASSUME NOTHING
.code

GetEspBeforeCalled PROC
    mov        eax, esp
    add        eax, 4
    ret  
GetEspBeforeCalled ENDP
    


end
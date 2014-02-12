PUBLIC GetEspBeforeCalled


.code

GetEspBeforeCalled PROC
    mov        rax, rsp
    add        rax, 8
    ret  
GetEspBeforeCalled ENDP
    


end
.code
SetMxcsr PROC
    push    rcx
    ldmxcsr [rsp]
    pop     rcx
    ret
SetMxcsr ENDP

GetMxcsr PROC
    push    rax
    stmxcsr [rsp]
    pop     rax
    ret
GetMxcsr ENDP

end

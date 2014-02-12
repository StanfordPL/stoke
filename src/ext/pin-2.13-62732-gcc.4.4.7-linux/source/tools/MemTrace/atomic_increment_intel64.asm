PUBLIC AtomicIncrement

extern numthreadsStarted:dword
.code
AtomicIncrement PROC
    lea rcx, numthreadsStarted
    inc DWORD PTR [rcx]
    ret
AtomicIncrement ENDP


end

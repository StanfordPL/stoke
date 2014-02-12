
.code
GetMxcsr PROC
	stmxcsr DWORD PTR [rcx]
	ret

GetMxcsr ENDP

SetMxcsr PROC
	ldmxcsr DWORD PTR [rcx]
	ret

SetMxcsr ENDP

end
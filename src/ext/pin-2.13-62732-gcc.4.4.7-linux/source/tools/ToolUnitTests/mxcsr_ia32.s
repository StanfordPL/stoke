.text
.globl GetMxcsr
.type GetMxcsr, function
GetMxcsr: 
    push %ebp
	mov  %esp, %ebp
	mov  8(%ebp), %eax
	stmxcsr (%eax)
	leave
    ret


.globl SetMxcsr
.type SetMxcsr, function
SetMxcsr: 
    push %ebp
	mov  %esp, %ebp
	mov  8(%ebp), %eax
	ldmxcsr (%eax)
	leave
    ret
 

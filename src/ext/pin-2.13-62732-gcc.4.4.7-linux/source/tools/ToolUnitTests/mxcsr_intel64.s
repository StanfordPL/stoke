.text
.globl GetMxcsr
.type GetMxcsr, function
GetMxcsr: 
	stmxcsr (%rdi)
    ret


.globl SetMxcsr
.type SetMxcsr, function
SetMxcsr: 
	ldmxcsr (%rdi)
    ret
 

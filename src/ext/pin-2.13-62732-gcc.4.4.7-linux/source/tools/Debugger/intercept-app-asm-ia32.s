    .text
.globl Breakpoint2
	.type	Breakpoint2, @function
Breakpoint2:
    mov     $0, %eax

.globl Breakpoint2Label
Breakpoint2Label:
    ret
	.size	Breakpoint2, .-Breakpoint2

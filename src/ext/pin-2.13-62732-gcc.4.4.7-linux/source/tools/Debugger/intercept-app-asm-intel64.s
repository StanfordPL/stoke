    .text
.globl Breakpoint2
	.type	Breakpoint2, @function
Breakpoint2:
    mov     $0, %rax

.globl Breakpoint2Label
Breakpoint2Label:
    ret
	.size	Breakpoint2, .-Breakpoint2

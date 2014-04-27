.text	

.globl	_Z3sindPm
.type	_Z3sindPm, @function

_Z3sindPm:

# USM = Unnecessary stack motion
# BCL = Branch control logic

#pushq %rbx # USM
#subq $0x10, %rsp # USM
#movsd %xmm0, 0x8(%rsp) # BCL
#movl 0xc(%rsp), %eax # BCL
movq (%rdi), %xmm1
#andl $0x7fff0000, %eax # BCL
#subl $0x30300000, %eax # BCL
#cmpl $0x10c50000, %eax # BCL
mulsd %xmm0, %xmm1
movapd 0x10(%rdi), %xmm6
movq $0x3fb921fb54400000, %r8
movq %r8, %xmm3
roundsd $0x0, %xmm1, %xmm1
cvtsd2si %xmm1, %edx
movapd 0x60(%rdi), %xmm5
pshufd $0x44, %xmm0, %xmm4
mulsd %xmm1, %xmm3
movddup %xmm1, %xmm1
andl $0x3f, %edx
shll $0x5, %edx
leaq 0x70(%rdi), %rax
addq %rdx, %rax
mulpd %xmm1, %xmm6
mulsd 0x20(%rdi), %xmm1
subsd %xmm3, %xmm4
movq 0x8(%rax), %xmm7
subsd %xmm3, %xmm0
movddup %xmm4, %xmm3
subsd %xmm6, %xmm4
pshufd $0x44, %xmm0, %xmm0
movapd (%rax), %xmm2
mulpd %xmm0, %xmm5
subpd %xmm6, %xmm0
mulsd %xmm4, %xmm7
subsd %xmm4, %xmm3
mulpd %xmm0, %xmm5
mulpd %xmm0, %xmm0
subsd %xmm6, %xmm3
movapd 0x40(%rdi), %xmm6
subsd %xmm3, %xmm1
movq 0x18(%rax), %xmm3
addsd %xmm3, %xmm2
subsd %xmm2, %xmm7
mulsd %xmm4, %xmm2
mulpd %xmm0, %xmm6
mulsd %xmm4, %xmm3
mulpd %xmm0, %xmm2
mulpd %xmm0, %xmm0
addpd 0x50(%rdi), %xmm5
mulsd (%rax), %xmm4
addpd 0x30(%rdi), %xmm6
mulpd %xmm0, %xmm5
movq %xmm3, %xmm0
addsd 0x8(%rax), %xmm3
mulpd %xmm7, %xmm1
movq %xmm4, %xmm7
addsd %xmm3, %xmm4
addpd %xmm5, %xmm6
movq 0x8(%rax), %xmm5
subsd %xmm3, %xmm5
subsd %xmm4, %xmm3
addsd 0x10(%rax), %xmm1
mulpd %xmm2, %xmm6
addsd %xmm0, %xmm5
addsd %xmm7, %xmm3
addsd %xmm5, %xmm1
addsd %xmm3, %xmm1
addsd %xmm6, %xmm1
unpckhpd %xmm6, %xmm6
movq %xmm4, %xmm0
addsd %xmm6, %xmm1
addsd %xmm1, %xmm0
#addq $0x10, %rsp # USM
#popq %rbx # USM
retq 

.size	_Z3sindPm, .-_Z3sindPm

.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
.section	.note.GNU-stack,"",@progbits


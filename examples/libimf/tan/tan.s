.text	

.globl	_Z3tandPm
.type	_Z3tandPm, @function

_Z3tandPm:

# USM = Unnecessary stack motion
# BCL = Branch control logic

#pushq %rbx # USM
#subq $0x10, %rsp # USM
#movsd %xmm0, 0x8(%rsp) # USM
#pextrw $0x3, %xmm0, %eax # BCL
#andl $0x7fff, %eax # BCL
#subl $0x3fba, %eax # BCL
#cmpl $0x10e, %eax # BCL
movapd (%rdi), %xmm5
movapd 0x20(%rdi), %xmm6
unpcklpd %xmm0, %xmm0
movapd 0x30(%rdi), %xmm4
andpd %xmm0, %xmm4
movapd 0x50(%rdi), %xmm1
mulpd %xmm0, %xmm1
orps %xmm4, %xmm5
addpd %xmm5, %xmm1
movapd %xmm1, %xmm7
unpckhpd %xmm7, %xmm7
cvttsd2si %xmm7, %edx
cvttpd2dq %xmm1, %xmm1
cvtdq2pd %xmm1, %xmm1
mulpd %xmm6, %xmm1
movapd 0x70(%rdi), %xmm3
movq 0x60(%rdi), %xmm5
addq $0x72900, %rdx
movapd 0x80(%rdi), %xmm4
mulpd %xmm1, %xmm3
andq $0x1f, %rdx
mulsd %xmm1, %xmm5
movq %rdx, %rcx
mulpd %xmm1, %xmm4
shlq $0x1, %rcx
subpd %xmm3, %xmm0
mulpd 0x90(%rdi), %xmm1
addq %rcx, %rdx
shlq $0x2, %rcx
addq %rcx, %rdx
addsd %xmm0, %xmm5
movapd %xmm0, %xmm2
subpd %xmm4, %xmm0
movq 0x10(%rdi), %xmm6
shlq $0x4, %rdx
leaq 0xa0(%rdi), %rax
andpd 0x40(%rdi), %xmm5
movapd %xmm0, %xmm3
addq %rdx, %rax
subpd %xmm0, %xmm2
unpckhpd %xmm0, %xmm0
divsd %xmm5, %xmm6
subpd %xmm4, %xmm2
movapd 0x10(%rax), %xmm7
subsd %xmm5, %xmm3
mulpd %xmm0, %xmm7
subpd %xmm1, %xmm2
movapd 0x30(%rax), %xmm1
mulpd %xmm0, %xmm1
movapd 0x60(%rax), %xmm4
mulpd %xmm0, %xmm4
addsd %xmm3, %xmm2
movapd %xmm0, %xmm3
mulpd %xmm0, %xmm0
addpd (%rax), %xmm7
addpd 0x20(%rax), %xmm1
mulpd %xmm0, %xmm1
addpd 0x50(%rax), %xmm4
addpd %xmm1, %xmm7
movapd 0x70(%rax), %xmm1
mulpd %xmm0, %xmm1
mulpd %xmm0, %xmm0
addpd %xmm1, %xmm4
movapd 0x40(%rax), %xmm1
mulpd %xmm0, %xmm1
addpd %xmm1, %xmm7
movapd %xmm3, %xmm1
mulpd %xmm0, %xmm3
mulsd %xmm0, %xmm0
mulpd 0x90(%rax), %xmm1
mulpd %xmm3, %xmm4
movq %xmm1, %xmm3
addpd %xmm4, %xmm7
movq %xmm1, %xmm4
mulsd %xmm7, %xmm0
unpckhpd %xmm7, %xmm7
addsd %xmm7, %xmm0
unpckhpd %xmm1, %xmm1
addsd %xmm1, %xmm3
subsd %xmm3, %xmm4
addsd %xmm4, %xmm1
movq %xmm2, %xmm4
movq 0x90(%rax), %xmm7
unpckhpd %xmm2, %xmm2
addsd 0x98(%rax), %xmm7
mulsd %xmm2, %xmm7
addsd 0x88(%rax), %xmm7
addsd %xmm1, %xmm7
addsd %xmm7, %xmm0
movq 0x10(%rdi), %xmm7
mulsd %xmm6, %xmm4
movq 0xa8(%rax), %xmm2
andpd %xmm6, %xmm2
mulsd %xmm2, %xmm5
mulsd 0xa0(%rax), %xmm6
subsd %xmm5, %xmm7
subsd 0x80(%rax), %xmm2
subsd %xmm4, %xmm7
mulsd %xmm6, %xmm7
movq %xmm3, %xmm4
subsd %xmm2, %xmm3
addsd %xmm3, %xmm2
subsd %xmm2, %xmm4
addsd %xmm4, %xmm0
subsd %xmm7, %xmm0
addsd %xmm3, %xmm0
#addq $0x10, %rsp # USM
#popq %rbx # USM
retq 

.size	_Z3tandPm, .-_Z3tandPm

.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
.section	.note.GNU-stack,"",@progbits


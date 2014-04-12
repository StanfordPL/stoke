.text

.globl _Z3logdPm
.type _Z3logdPm, @function

_Z3logdPm:
  
# USM = Unnecessary stack motion
# BCL = Branch control logic

#subq $0x18, %rsp # USM
#movsd %xmm0, (%rsp) # USM
movq $0x3ff0000000000000, %rax
movq %rax, %xmm2
movq $0x77f0000000000000, %rdx
movq %rdx, %xmm3
movl $0x8000, %ecx
movq %rcx, %xmm4
movq $0xffffe00000000000, %r8
movq %r8, %xmm5
movq %xmm0, %xmm1
pextrw $0x3, %xmm0, %eax
orpd %xmm2, %xmm0
movl $0x3fe0, %ecx
psrlq $0x1b, %xmm0
leaq 0x50(%rdi), %r11
psrld $0x2, %xmm0
rcpps %xmm0, %xmm0
psllq $0xc, %xmm1
pshufd $0xe4, %xmm5, %xmm6
psrlq $0xc, %xmm1
subl $0x10, %eax
#cmpl $0x7fe0, %eax #BCL
paddd %xmm4, %xmm0
orpd %xmm3, %xmm1
movd %xmm0, %edx
psllq $0x1d, %xmm0
andpd %xmm1, %xmm5
andpd %xmm6, %xmm0
subsd %xmm5, %xmm1
mulpd %xmm0, %xmm5
andl $0x7ff0, %eax
subl %ecx, %eax
cvtsi2sdl %eax, %xmm7
mulsd %xmm0, %xmm1
movq (%rdi), %xmm6
movapd 0x20(%rdi), %xmm3
subsd %xmm2, %xmm5
andl $0xff0000, %edx
shrl $0xc, %edx
movapd (%r11,%rdx,1), %xmm0
movapd 0x30(%rdi), %xmm4
addsd %xmm5, %xmm1
movapd 0x40(%rdi), %xmm2
mulsd %xmm7, %xmm6
movddup %xmm1, %xmm5
mulsd 0x10(%rdi), %xmm7
mulsd %xmm1, %xmm3
addsd %xmm6, %xmm0
mulpd %xmm5, %xmm4
mulpd %xmm5, %xmm5
movddup %xmm0, %xmm6
addsd %xmm1, %xmm0
addpd %xmm2, %xmm4
mulpd %xmm5, %xmm3
subsd %xmm0, %xmm6
mulsd %xmm1, %xmm4
pshufd $0xee, %xmm0, %xmm2
addsd %xmm6, %xmm1
mulsd %xmm5, %xmm5
addsd %xmm2, %xmm7
addpd %xmm3, %xmm4
addsd %xmm7, %xmm1
mulpd %xmm5, %xmm4
addsd %xmm4, %xmm1
pshufd $0xee, %xmm4, %xmm5
addsd %xmm5, %xmm1
addsd %xmm1, %xmm0
#addq $0x18, %rsp # USM
retq 

.size _Z3logdPm, .-_Z3logdPm

.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
.section	.note.GNU-stack,"",@progbits


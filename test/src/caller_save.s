  .text
  .globl _Z11caller_save
  .type _Z11caller_save, @function
_Z11caller_save:
  movq $0x0123456789abcdef, %rax
	movq %rax, %rcx
	movq %rax, %rdx
	movq %rax, %rsi
	movq %rax, %rdi
	movq %rax, %r8
	movq %rax, %r9
	movq %rax, %r10
	movq %rax, %r11
	movq %rax, %xmm0
	movq %rax, %xmm1
	movq %rax, %xmm2
	movq %rax, %xmm3
	movq %rax, %xmm4
	movq %rax, %xmm5
	movq %rax, %xmm6
	movq %rax, %xmm7
	movq %rax, %xmm8
	movq %rax, %xmm9
	movq %rax, %xmm10
	movq %rax, %xmm11
	movq %rax, %xmm12
	movq %rax, %xmm13
	movq %rax, %xmm14
	movq %rax, %xmm15
	retq
  .size _Z11caller_save, .-_Z11caller_save

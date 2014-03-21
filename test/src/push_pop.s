  .text
  .globl _Z8push_pop
  .type _Z8push_pop, @function
_Z8push_pop:
	movq $0x0000000000000000, %rdi
	movq %rsp, (%rdi)
	movq $0x7000000000000040, %rsp
	pushq %rax
	movq $0x0123456789abcdef, %rax
	popq %rax
	movq (%rdi), %rsp
  retq
  .size _Z8push_pop, .-_Z8push_pop

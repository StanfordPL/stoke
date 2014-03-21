  .text
  .globl _Z9sigsegv_2
  .type _Z9sigsegv_2, @function
_Z9sigsegv_2:
	movq $0x0123456789abcdef, %rbx
	movq %rbx, %rbp
	movq %rbx, %rsp
	movq %rbx, %r12
	movq %rbx, %r13
	movq %rbx, %r14
	movq %rbx, %r15
	retq
  .size _Z9sigsegv_2, .-_Z9sigsegv_2

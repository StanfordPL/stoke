  .text
  .globl _Z9sigsegv_1
  .type _Z9sigsegv_1, @function
_Z9sigsegv_1:
	xorq %rax, %rax
	movq (%rax), %rax
  retq
  .size _Z9sigsegv_1, .-_Z9sigsegv_1

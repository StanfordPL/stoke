  .text
  .globl _Z9sigsegv_2
  .type _Z9sigsegv_2, @function
_Z9sigsegv_2:
	movq $0x12345678, %r12
  retq
  .size _Z9sigsegv_2, .-_Z9sigsegv_2

  .text
  .globl _Z8sigfpe_1
  .type _Z8sigfpe_1, @function
_Z8sigfpe_1:
	xorq %rax, %rax
	divq %rax
  retq
  .size _Z8sigfpe_1, .-_Z8sigfpe_1

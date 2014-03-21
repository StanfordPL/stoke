  .text
  .globl _Z8sigfpe_2
  .type _Z8sigfpe_2, @function
_Z8sigfpe_2:
	xorq %rsp, %rsp
	divq %rsp
  retq
  .size _Z8sigfpe_2, .-_Z8sigfpe_2

  .text
  .globl _Z7aligned
  .type _Z7aligned, @function
_Z7aligned:
	movq $0x7000000000000000, %rax
  movaps (%rax), %xmm0
  vmovaps (%rax), %ymm0
  retq
  .size _Z7aligned, .-_Z7aligned

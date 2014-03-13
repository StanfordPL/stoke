  .text
  .globl _Z9unaligned
  .type _Z9unaligned, @function
_Z9unaligned:
	movq $0x7000000000000008, %rax
  movaps (%rax), %xmm0
  vmovaps (%rax), %ymm0
  retq
  .size _Z9unaligned, .-_Z9unaligned

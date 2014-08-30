  .text
  .globl quotearg_alloc
  .type quotearg_alloc, @function
quotearg_alloc:
  movq   %rdx,%rcx
  xorl   %edx,%edx
  jmpq   .L_4049e0
  nop
  .size quotearg_alloc, .-quotearg_alloc

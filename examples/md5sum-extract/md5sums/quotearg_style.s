  .text
  .globl quotearg_style
  .type quotearg_style, @function
quotearg_style:
  movq   %rsi,%rdx
  movl   %edi,%esi
  xorl   %edi,%edi
  jmpq   .L_404be0
  nop
  .size quotearg_style, .-quotearg_style

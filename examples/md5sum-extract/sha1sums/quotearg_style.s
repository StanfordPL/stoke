  .text
  .globl quotearg_style
  .type quotearg_style, @function
quotearg_style:
  movq   %rsi,%rdx
  movl   %edi,%esi
  xorl   %edi,%edi
  jmpq   .L_405750
  nop
  .size quotearg_style, .-quotearg_style

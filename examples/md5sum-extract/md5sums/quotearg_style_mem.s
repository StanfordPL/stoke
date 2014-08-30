  .text
  .globl quotearg_style_mem
  .type quotearg_style_mem, @function
quotearg_style_mem:
  movq   %rdx,%rcx
  movq   %rsi,%rdx
  movl   %edi,%esi
  xorl   %edi,%edi
  jmpq   .L_404c10
  nop
  .size quotearg_style_mem, .-quotearg_style_mem

  .text
  .globl quotearg_custom_mem
  .type quotearg_custom_mem, @function
quotearg_custom_mem:
  movq   %rcx,%r8
  movq   %rdx,%rcx
  movq   %rsi,%rdx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_407050
  nop
  .size quotearg_custom_mem, .-quotearg_custom_mem

  .text
  .globl quotearg_custom_mem
  .type quotearg_custom_mem, @function
quotearg_custom_mem:
  movq   %rcx,%r8
  movq   %rdx,%rcx
  movq   %rsi,%rdx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4058c0
  nop
  .size quotearg_custom_mem, .-quotearg_custom_mem

  .text
  .globl quotearg_mem
  .type quotearg_mem, @function
quotearg_mem:
  movq   %rsi,%rdx
  movl   $0x60b420,%ecx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4069c0
  nop
  .size quotearg_mem, .-quotearg_mem

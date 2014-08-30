  .text
  .globl quotearg
  .type quotearg, @function
quotearg:
  movq   %rdi,%rsi
  movl   $0x60a420,%ecx
  movq   $0xffffffffffffffff,%rdx
  xorl   %edi,%edi
  jmpq   .L_405230
  nop
  .size quotearg, .-quotearg

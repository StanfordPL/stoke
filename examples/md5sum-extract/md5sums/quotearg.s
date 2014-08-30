  .text
  .globl quotearg
  .type quotearg, @function
quotearg:
  movq   %rdi,%rsi
  movl   $0x609420,%ecx
  movq   $0xffffffffffffffff,%rdx
  xorl   %edi,%edi
  jmpq   .L_4046c0
  nop
  .size quotearg, .-quotearg

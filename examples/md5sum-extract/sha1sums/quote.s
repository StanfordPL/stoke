  .text
  .globl quote
  .type quote, @function
quote:
  movq   %rdi,%rsi
  movl   $0x60a240,%ecx
  movq   $0xffffffffffffffff,%rdx
  xorl   %edi,%edi
  jmpq   .L_405230
  nop
  .size quote, .-quote

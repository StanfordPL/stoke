  .text
  .globl quote_n
  .type quote_n, @function
quote_n:
  movl   $0x60a240,%ecx
  movq   $0xffffffffffffffff,%rdx
  jmpq   .L_405230
  nop
  .size quote_n, .-quote_n

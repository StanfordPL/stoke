  .text
  .globl quotearg_n
  .type quotearg_n, @function
quotearg_n:
  movl   $0x609420,%ecx
  movq   $0xffffffffffffffff,%rdx
  jmpq   .L_4046c0
  nop
  .size quotearg_n, .-quotearg_n

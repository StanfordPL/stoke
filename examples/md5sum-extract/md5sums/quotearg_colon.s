  .text
  .globl quotearg_colon
  .type quotearg_colon, @function
quotearg_colon:
  movl   $0x3a,%edx
  movq   $0xffffffffffffffff,%rsi
  jmpq   .L_404c70
  nop
  .size quotearg_colon, .-quotearg_colon

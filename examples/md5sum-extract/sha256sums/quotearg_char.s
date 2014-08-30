  .text
  .globl quotearg_char
  .type quotearg_char, @function
quotearg_char:
  movsbl %sil,%edx
  movq   $0xffffffffffffffff,%rsi
  jmpq   .L_406f70
  .size quotearg_char, .-quotearg_char

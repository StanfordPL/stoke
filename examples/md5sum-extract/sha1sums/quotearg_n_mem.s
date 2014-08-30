  .text
  .globl quotearg_n_mem
  .type quotearg_n_mem, @function
quotearg_n_mem:
  movl   $0x60a420,%ecx
  jmpq   .L_405230
  nop
  .size quotearg_n_mem, .-quotearg_n_mem

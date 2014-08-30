  .text
  .globl quote_n_mem
  .type quote_n_mem, @function
quote_n_mem:
  movl   $0x60a240,%ecx
  jmpq   .L_405230
  nop
  .size quote_n_mem, .-quote_n_mem

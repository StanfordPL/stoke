  .text
  .globl quote_mem
  .type quote_mem, @function
quote_mem:
  movq   %rsi,%rdx
  movl   $0x60b240,%ecx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4069c0
  nop
  .size quote_mem, .-quote_mem

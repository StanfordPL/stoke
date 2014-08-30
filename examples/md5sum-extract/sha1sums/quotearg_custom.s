  .text
  .globl quotearg_custom
  .type quotearg_custom, @function
quotearg_custom:
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%r8
  movq   %rsi,%rdx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4058c0
  nop
  .size quotearg_custom, .-quotearg_custom

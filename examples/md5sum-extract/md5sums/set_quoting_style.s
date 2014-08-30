  .text
  .globl set_quoting_style
  .type set_quoting_style, @function
set_quoting_style:
  movl   $0x609420,%eax
  testq  %rdi,%rdi
  cmovneq %rdi,%rax
  movl   %esi,(%rax)
  retq   
  nop
  .size set_quoting_style, .-set_quoting_style

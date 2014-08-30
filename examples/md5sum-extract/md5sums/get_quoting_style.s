  .text
  .globl get_quoting_style
  .type get_quoting_style, @function
get_quoting_style:
  testq  %rdi,%rdi
  movl   $0x609420,%eax
  cmovneq %rdi,%rax
  movl   (%rax),%eax
  retq   
  nop
  .size get_quoting_style, .-get_quoting_style

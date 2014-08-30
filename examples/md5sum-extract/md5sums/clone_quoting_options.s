  .text
  .globl clone_quoting_options
  .type clone_quoting_options, @function
clone_quoting_options:
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  callq  .L_401420
  movl   (%rax),%r12d
  testq  %rbp,%rbp
  movl   $0x609420,%edi
  movq   %rax,%rbx
  cmovneq %rbp,%rdi
  movl   $0x38,%esi
  callq  .L_405680
  movl   %r12d,(%rbx)
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  .size clone_quoting_options, .-clone_quoting_options

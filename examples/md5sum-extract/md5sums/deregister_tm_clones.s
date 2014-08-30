  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function
deregister_tm_clones:
  movl   $0x60929f,%eax
  pushq  %rbp
  subq   $0x609298,%rax
  cmpq   $0xe,%rax
  movq   %rsp,%rbp
  ja     .L_402517
.L_402515:
  popq   %rbp
  retq   
.L_402517:
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_402515
  popq   %rbp
  movl   $0x609298,%edi
  jmpq   *%rax
  nop
  .size deregister_tm_clones, .-deregister_tm_clones

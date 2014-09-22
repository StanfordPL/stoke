  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function
deregister_tm_clones:
  movl   $0x601047,%eax
  pushq  %rbp
  subq   $0x601040,%rax
  cmpq   $0xe,%rax
  movq   %rsp,%rbp
  ja     .L_400487
.L_400485:
  popq   %rbp
  retq   
.L_400487:
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_400485
  popq   %rbp
  movl   $0x601040,%edi
  jmpq   *%rax
  nop
  .size deregister_tm_clones, .-deregister_tm_clones

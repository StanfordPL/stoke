  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function
deregister_tm_clones:
  movl   $0x60105f,%eax
  pushq  %rbp
  subq   $0x601058,%rax
  cmpq   $0xe,%rax
  movq   %rsp,%rbp
  ja     .L_400697
.L_400695:
  popq   %rbp
  retq   
.L_400697:
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_400695
  popq   %rbp
  movl   $0x601058,%edi
  jmpq   *%rax
  nop
  .size deregister_tm_clones, .-deregister_tm_clones

  .text
  .globl register_tm_clones
  .type register_tm_clones, @function
register_tm_clones:
  movl   $0x60a298,%eax
  pushq  %rbp
  subq   $0x60a298,%rax
  sarq   $0x3,%rax
  movq   %rsp,%rbp
  movq   %rax,%rdx
  shrq   $0x3f,%rdx
  addq   %rdx,%rax
  sarq $0x1,  %rax
  jne    .L_402554
.L_402552:
  popq   %rbp
  retq   
.L_402554:
  movl   $0x0,%edx
  testq  %rdx,%rdx
  je     .L_402552
  popq   %rbp
  movq   %rax,%rsi
  movl   $0x60a298,%edi
  jmpq   *%rdx
  nop
  .size register_tm_clones, .-register_tm_clones

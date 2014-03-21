  .text
  .globl register_tm_clones
  .type register_tm_clones, @function
register_tm_clones:
  movl   $0x601058,%eax
  pushq  %rbp
  subq   $0x601058,%rax
  sarq   $0x3,%rax
  movq   %rsp,%rbp
  movq   %rax,%rdx
  shrq   $0x3f,%rdx
  addq   %rdx,%rax
  sarq $0x1,  %rax
  jne    .L_4006d4
.L_4006d2:
  popq   %rbp
  retq   
.L_4006d4:
  movl   $0x0,%edx
  testq  %rdx,%rdx
  je     .L_4006d2
  popq   %rbp
  movq   %rax,%rsi
  movl   $0x601058,%edi
  jmpq   *%rdx
  nop
  .size register_tm_clones, .-register_tm_clones

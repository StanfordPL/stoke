  .text
  .globl main
  .type main, @function
main:
  pushq  %r12
  pushq  %rbp
  movq   0x200a66(%rip),%rbp        
  pushq  %rbx
  xorl   %ebx,%ebx
  leaq   0x2000(%rbp),%rax
  leaq   0x1000(%rbp),%r12
  movq   %rax,0x200a4e(%rip)        
  nop
.L_400608:
  movl   %ebx,%edx
  movq   %r12,%rsi
  movq   %rbp,%rdi
  addq   $0x4,%rbx
  callq  .L_400740
  cmpq   $0x400,%rbx
  jne    .L_400608
  popq   %rbx
  popq   %rbp
  xorl   %eax,%eax
  popq   %r12
  retq   
  nop
  .size main, .-main

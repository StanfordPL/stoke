  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function
__libc_csu_init:
  movq   %rbp,-0x28(%rsp)
  movq   %r12,-0x20(%rsp)
  leaq   0x200607(%rip),%rbp        
  leaq   0x2005f0(%rip),%r12        
  movq   %rbx,-0x30(%rsp)
  movq   %r13,-0x18(%rsp)
  movq   %r14,-0x10(%rsp)
  movq   %r15,-0x8(%rsp)
  subq   $0x38,%rsp
  subq   %r12,%rbp
  movl   %edi,%r15d
  movq   %rsi,%r14
  sarq   $0x3,%rbp
  movq   %rdx,%r13
  xorl   %ebx,%ebx
  callq  .L_400558
  testq  %rbp,%rbp
  je     .L_400856
  nop
.L_400840:
  movq   %r13,%rdx
  movq   %r14,%rsi
  movl   %r15d,%edi
  callq  *(%r12,%rbx,8)
  addq   $0x1,%rbx
  cmpq   %rbp,%rbx
  jne    .L_400840
.L_400856:
  movq   0x8(%rsp),%rbx
  movq   0x10(%rsp),%rbp
  movq   0x18(%rsp),%r12
  movq   0x20(%rsp),%r13
  movq   0x28(%rsp),%r14
  movq   0x30(%rsp),%r15
  addq   $0x38,%rsp
  retq   
  nop
  .size __libc_csu_init, .-__libc_csu_init

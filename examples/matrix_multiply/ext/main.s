  .text
  .globl main
  .type main, @function
main:
  pushq  %rbp
  movq   %rsp,%rbp
  pushq  %r15
  pushq  %r14
  pushq  %r13
  pushq  %r12
  pushq  %rbx
  subq   $0x168,%rsp
  cmpl   $0x1,%edi
  jle    .L_400529
  movq   0x8(%rsi),%rdi
  xorl   %eax,%eax
  callq  .L_400430
  movslq %eax,%rdx
  leaq   0x0(,%rdx,4),%rcx
  imulq  %rdx,%rdx
  leaq   0x12(,%rdx,4),%rdx
  andq   $0xfffffffffffffff0,%rdx
  subq   %rdx,%rsp
  movq   %rsp,%r15
  subq   %rdx,%rsp
  movq   %rsp,%r14
  subq   %rdx,%rsp
  testl  %eax,%eax
  movq   %rsp,%r12
  jle    .L_40054d
.L_40049d:
  shrq   $0x2,%rcx
  xorl   %ebx,%ebx
  xorl   %r8d,%r8d
  leaq   0x0(,%rcx,4),%r13
  movq   %rcx,-0x188(%rbp)
  nop
.L_4004b8:
  leal   (%r8,%r8,1),%r11d
  leaq   (%r12,%rbx,1),%rcx
  leaq   (%r15,%rbx,1),%r10
  leaq   (%r14,%rbx,1),%r9
  movl   %r8d,%esi
  xorl   %edx,%edx
  nop
.L_4004d0:
  leal   (%r11,%rdx,1),%edi
  movl   %edi,(%r10,%rdx,4)
  xorl   %edi,%edi
  cmpl   %edx,%r8d
  setle  %dil
  movl   %esi,(%r9,%rdx,4)
  addq   $0x1,%rdx
  movl   %edi,(%rcx)
  addl   $0x2,%esi
  addq   $0x4,%rcx
  cmpl   %edx,%eax
  jg     .L_4004d0
  addl   $0x1,%r8d
  addq   %r13,%rbx
  cmpl   %eax,%r8d
  jl     .L_4004b8
.L_400502:
  movq   -0x188(%rbp),%rdx
  subl   $0x1,%eax
  cltq   
  addq   $0x1,%rdx
  imulq  %rax,%rdx
  movl   (%r12,%rdx,4),%eax
  leaq   -0x28(%rbp),%rsp
  popq   %rbx
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  popq   %rbp
  retq   
.L_400529:
  leaq   -0x180(%rbp),%r12
  leaq   -0x110(%rbp),%r14
  leaq   -0xa0(%rbp),%r15
  movl   $0x14,%ecx
  movl   $0x5,%eax
  jmpq   .L_40049d
.L_40054d:
  shrq   $0x2,%rcx
  movq   %rcx,-0x188(%rbp)
  jmpq    .L_400502
  .size main, .-main

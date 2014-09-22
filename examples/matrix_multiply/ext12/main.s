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
  jg     .L_40058c
  leaq   -0x180(%rbp),%r12
  leaq   -0x110(%rbp),%rax
  movq   %rax,-0x188(%rbp)
  leaq   -0xa0(%rbp),%r14
  movq   $0x14,-0x190(%rbp)
  movl   $0x5,%eax
.L_400572:
  movq   -0x190(%rbp),%r13
  shrq   $0x2,%r13
  movl   $0x0,%ebx
  leaq   0x0(,%r13,4),%r15
  jmpq    .L_400608
.L_40058c:
  movq   0x8(%rsi),%rdi
  movl   $0x0,%eax
  callq  .L_400430
  movslq %eax,%rdx
  leaq   0x0(,%rdx,4),%rbx
  movq   %rbx,-0x190(%rbp)
  imulq  %rdx,%rdx
  leaq   0x12(,%rdx,4),%rdx
  andq   $0xfffffffffffffff0,%rdx
  subq   %rdx,%rsp
  movq   %rsp,%r14
  subq   %rdx,%rsp
  movq   %rsp,-0x188(%rbp)
  subq   %rdx,%rsp
  movq   %rsp,%r12
  testl  %eax,%eax
  jg     .L_400572
  jmpq    .L_400635
.L_4005d8:
  leal   (%r10,%rdx,1),%edi
  movl   %edi,(%r9,%rdx,4)
  movl   %esi,(%r8,%rdx,4)
  cmpl   %edx,%r11d
  setle  %dil
  movzbl %dil,%edi
  movl   %edi,(%rcx)
  addq   $0x1,%rdx
  addl   $0x2,%esi
  addq   $0x4,%rcx
  cmpl   %edx,%eax
  jg     .L_4005d8
  addq   $0x1,%rbx
  cmpl   %ebx,%eax
  jle    .L_400635
.L_400608:
  movl   %ebx,%r11d
  movl   %ebx,%esi
  movslq %ebx,%rdx
  imulq  %r13,%rdx
  leaq   (%r12,%rdx,4),%rcx
  leal   (%rbx,%rbx,1),%r10d
  movq   %r15,%r8
  imulq  %rbx,%r8
  leaq   (%r14,%r8,1),%r9
  addq   -0x188(%rbp),%r8
  movl   $0x0,%edx
  jmpq    .L_4005d8
.L_400635:
  subl   $0x1,%eax
  movq   -0x190(%rbp),%rdx
  shrq   $0x2,%rdx
  addq   $0x1,%rdx
  cltq   
  imulq  %rdx,%rax
  movl   (%r12,%rax,4),%eax
  leaq   -0x28(%rbp),%rsp
  popq   %rbx
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  popq   %rbp
  retq   
  .size main, .-main

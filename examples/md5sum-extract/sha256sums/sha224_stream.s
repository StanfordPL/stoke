  .text
  .globl sha224_stream
  .type sha224_stream, @function
sha224_stream:
  pushq  %r13
  movq   %rsi,%r13
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  movl   $0x8048,%edi
  pushq  %rbx
  subq   $0xb8,%rsp
  callq  .L_401630
  testq  %rax,%rax
  movq   %rax,%r12
  je     .L_405a70
  movl   $0xc1059ed8,(%rsp)
  movl   $0x367cd507,0x4(%rsp)
  xorl   %ebx,%ebx
  movl   $0x3070dd17,0x8(%rsp)
  movl   $0xf70e5939,0xc(%rsp)
  movl   $0xffc00b31,0x10(%rsp)
  movl   $0x68581511,0x14(%rsp)
  movl   $0x64f98fa7,0x18(%rsp)
  movl   $0xbefa4fa4,0x1c(%rsp)
  movl   $0x0,0x24(%rsp)
  movl   $0x0,0x20(%rsp)
  movq   $0x0,0x28(%rsp)
  nop
.L_4059c8:
  leaq   (%r12,%rbx,1),%rdi
  movl   $0x8000,%edx
  movq   %rbp,%rcx
  subq   %rbx,%rdx
  movl   $0x1,%esi
  callq  .L_401480
  addq   %rax,%rbx
  cmpq   $0x8000,%rbx
  je     .L_405a30
  testq  %rax,%rax
  je     .L_405a48
  testb  $0x10,0x0(%rbp)
  je     .L_4059c8
.L_4059f8:
  testq  %rbx,%rbx
  jne    .L_405a60
.L_4059fd:
  movq   %rsp,%rdi
  callq  .L_405460
  movq   %r13,%rsi
  movq   %rsp,%rdi
  callq  .L_402c30
  movq   %r12,%rdi
  callq  .L_401400
  xorl   %eax,%eax
.L_405a1a:
  addq   $0xb8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_405a30:
  movq   %rsp,%rdx
  movl   $0x8000,%esi
  movq   %r12,%rdi
  callq  .L_402c50
  xorl   %ebx,%ebx
  jmpq    .L_4059c8
  nop
.L_405a48:
  testb  $0x20,0x0(%rbp)
  je     .L_4059f8
  movq   %r12,%rdi
  callq  .L_401400
  movl   $0x1,%eax
  jmpq    .L_405a1a
  nop
.L_405a60:
  movq   %rsp,%rdx
  movq   %rbx,%rsi
  movq   %r12,%rdi
  callq  .L_405590
  jmpq    .L_4059fd
.L_405a70:
  addq   $0xb8,%rsp
  movl   $0x1,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
  nop
  .size sha224_stream, .-sha224_stream

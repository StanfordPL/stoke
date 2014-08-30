  .text
  .globl md5_stream
  .type md5_stream, @function
md5_stream:
  pushq  %r13
  movq   %rsi,%r13
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  movl   $0x8048,%edi
  pushq  %rbx
  subq   $0xa8,%rsp
  callq  .L_401630
  testq  %rax,%rax
  movq   %rax,%r12
  je     .L_403770
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  xorl   %ebx,%ebx
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  nop
.L_4036d8:
  leaq   (%r12,%rbx,1),%rdi
  movl   $0x8000,%edx
  movq   %rbp,%rcx
  subq   %rbx,%rdx
  movl   $0x1,%esi
  callq  .L_401480
  addq   %rax,%rbx
  cmpq   $0x8000,%rbx
  je     .L_403730
  testq  %rax,%rax
  je     .L_403748
  testb  $0x10,0x0(%rbp)
  je     .L_4036d8
.L_403708:
  testq  %rbx,%rbx
  jne    .L_403760
.L_40370d:
  movq   %r13,%rsi
  movq   %rsp,%rdi
  callq  .L_403420
  movq   %r12,%rdi
  callq  .L_401400
  xorl   %eax,%eax
.L_403722:
  addq   $0xa8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
.L_403730:
  movq   %rsp,%rdx
  movl   $0x8000,%esi
  movq   %r12,%rdi
  callq  .L_402bd0
  xorl   %ebx,%ebx
  jmpq    .L_4036d8
  nop
.L_403748:
  testb  $0x20,0x0(%rbp)
  je     .L_403708
  movq   %r12,%rdi
  callq  .L_401400
  movl   $0x1,%eax
  jmpq    .L_403722
  nop
.L_403760:
  movq   %rsp,%rdx
  movq   %rbx,%rsi
  movq   %r12,%rdi
  callq  .L_4034d0
  jmpq    .L_40370d
.L_403770:
  addq   $0xa8,%rsp
  movl   $0x1,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
  nop
  .size md5_stream, .-md5_stream

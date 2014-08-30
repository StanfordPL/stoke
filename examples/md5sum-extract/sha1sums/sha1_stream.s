  .text
  .globl sha1_stream
  .type sha1_stream, @function
sha1_stream:
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
  je     .L_4042e0
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  xorl   %ebx,%ebx
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0xc3d2e1f0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x1c(%rsp)
  nop
.L_404240:
  leaq   (%r12,%rbx,1),%rdi
  movl   $0x8000,%edx
  movq   %rbp,%rcx
  subq   %rbx,%rdx
  movl   $0x1,%esi
  callq  .L_401480
  addq   %rax,%rbx
  cmpq   $0x8000,%rbx
  je     .L_4042a0
  testq  %rax,%rax
  je     .L_4042b8
  testb  $0x10,0x0(%rbp)
  je     .L_404240
.L_404270:
  testq  %rbx,%rbx
  jne    .L_4042d0
.L_404275:
  movq   %r13,%rsi
  movq   %rsp,%rdi
  callq  .L_403f40
  movq   %r12,%rdi
  callq  .L_401400
  xorl   %eax,%eax
.L_40428a:
  addq   $0xa8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_4042a0:
  movq   %rsp,%rdx
  movl   $0x8000,%esi
  movq   %r12,%rdi
  callq  .L_402be0
  xorl   %ebx,%ebx
  jmpq    .L_404240
  nop
.L_4042b8:
  testb  $0x20,0x0(%rbp)
  je     .L_404270
  movq   %r12,%rdi
  callq  .L_401400
  movl   $0x1,%eax
  jmpq    .L_40428a
  nop
.L_4042d0:
  movq   %rsp,%rdx
  movq   %rbx,%rsi
  movq   %r12,%rdi
  callq  .L_404020
  jmpq    .L_404275
.L_4042e0:
  addq   $0xa8,%rsp
  movl   $0x1,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
  nop
  .size sha1_stream, .-sha1_stream

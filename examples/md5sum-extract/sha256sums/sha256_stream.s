  .text
  .globl sha256_stream
  .type sha256_stream, @function
sha256_stream:
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
  je     .L_405920
  movl   $0x6a09e667,(%rsp)
  movl   $0xbb67ae85,0x4(%rsp)
  xorl   %ebx,%ebx
  movl   $0x3c6ef372,0x8(%rsp)
  movl   $0xa54ff53a,0xc(%rsp)
  movl   $0x510e527f,0x10(%rsp)
  movl   $0x9b05688c,0x14(%rsp)
  movl   $0x1f83d9ab,0x18(%rsp)
  movl   $0x5be0cd19,0x1c(%rsp)
  movl   $0x0,0x24(%rsp)
  movl   $0x0,0x20(%rsp)
  movq   $0x0,0x28(%rsp)
  nop
.L_405878:
  leaq   (%r12,%rbx,1),%rdi
  movl   $0x8000,%edx
  movq   %rbp,%rcx
  subq   %rbx,%rdx
  movl   $0x1,%esi
  callq  .L_401480
  addq   %rax,%rbx
  cmpq   $0x8000,%rbx
  je     .L_4058e0
  testq  %rax,%rax
  je     .L_4058f8
  testb  $0x10,0x0(%rbp)
  je     .L_405878
.L_4058a8:
  testq  %rbx,%rbx
  jne    .L_405910
.L_4058ad:
  movq   %rsp,%rdi
  callq  .L_405460
  movq   %r13,%rsi
  movq   %rsp,%rdi
  callq  .L_402c10
  movq   %r12,%rdi
  callq  .L_401400
  xorl   %eax,%eax
.L_4058ca:
  addq   $0xb8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_4058e0:
  movq   %rsp,%rdx
  movl   $0x8000,%esi
  movq   %r12,%rdi
  callq  .L_402c50
  xorl   %ebx,%ebx
  jmpq    .L_405878
  nop
.L_4058f8:
  testb  $0x20,0x0(%rbp)
  je     .L_4058a8
  movq   %r12,%rdi
  callq  .L_401400
  movl   $0x1,%eax
  jmpq    .L_4058ca
  nop
.L_405910:
  movq   %rsp,%rdx
  movq   %rbx,%rsi
  movq   %r12,%rdi
  callq  .L_405590
  jmpq    .L_4058ad
.L_405920:
  addq   $0xb8,%rsp
  movl   $0x1,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
  .size sha256_stream, .-sha256_stream

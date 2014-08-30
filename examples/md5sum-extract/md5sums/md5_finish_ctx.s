  .text
  .globl md5_finish_ctx
  .type md5_finish_ctx, @function
md5_finish_ctx:
  pushq  %r13
  pushq  %r12
  movq   %rsi,%r12
  pushq  %rbp
  pushq  %rbx
  movq   %rdi,%rbx
  subq   $0x8,%rsp
  movl   0x18(%rdi),%eax
  movl   0x10(%rdi),%esi
  cmpl   $0x38,%eax
  sbbq   %rbp,%rbp
  andq   $0xffffffffffffffc0,%rbp
  subq   $0xffffffffffffff80,%rbp
  cmpl   $0x38,%eax
  sbbq   %rdx,%rdx
  andq   $0xfffffffffffffff0,%rdx
  addq   $0x1f,%rdx
  cmpl   $0x38,%eax
  sbbq   %rcx,%rcx
  addl   %eax,%esi
  andq   $0xfffffffffffffff0,%rcx
  movl   %esi,0x10(%rdi)
  movl   0x14(%rdi),%edi
  addq   $0x1e,%rcx
  cmpl   %esi,%eax
  jbe    .L_403472
  addl   $0x1,%edi
  movl   %edi,0x14(%rbx)
.L_403472:
  leal   0x0(,%rsi,8),%r8d
  shrl   $0x1d,%esi
  leaq   0x1c(%rbx),%r13
  movl   %r8d,0x1c(%rbx,%rcx,4)
  leal   0x0(,%rdi,8),%ecx
  leaq   0x0(%r13,%rax,1),%rdi
  orl    %esi,%ecx
  movl   $0x406aa0,%esi
  movl   %ecx,0x1c(%rbx,%rdx,4)
  movq   %rbp,%rcx
  subq   %rax,%rcx
  leaq   -0x8(%rcx),%rdx
  callq  .L_401610
  movq   %rbp,%rsi
  movq   %r13,%rdi
  movq   %rbx,%rdx
  callq  .L_402bd0
  addq   $0x8,%rsp
  movq   %rbx,%rdi
  movq   %r12,%rsi
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  jmpq   .L_402bb0
  nop
  .size md5_finish_ctx, .-md5_finish_ctx

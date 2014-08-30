  .text
  .globl quotearg_buffer
  .type quotearg_buffer, @function
quotearg_buffer:
  pushq  %r15
  movl   $0x60a420,%eax
  movq   %rcx,%r15
  pushq  %r14
  movq   %rdx,%r14
  pushq  %r13
  movq   %rsi,%r13
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %r8,%rbx
  subq   $0x28,%rsp
  testq  %r8,%r8
  cmoveq %rax,%rbx
  movq   %rdi,0x18(%rsp)
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movq   0x30(%rbx),%rax
  movl   0x4(%rbx),%r9d
  movq   0x18(%rsp),%rdi
  movq   %r15,%rcx
  movq   %r14,%rdx
  movq   %r13,%rsi
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %rax,0x8(%rsp)
  leaq   0x8(%rbx),%rax
  movq   %rax,(%rsp)
  movl   (%rbx),%r8d
  callq  .L_404680
  movl   %r12d,0x0(%rbp)
  addq   $0x28,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  .size quotearg_buffer, .-quotearg_buffer

  .text
  .globl quotearg_alloc_mem
  .type quotearg_alloc_mem, @function
quotearg_alloc_mem:
  pushq  %r15
  movl   $0x60b420,%eax
  pushq  %r14
  movq   %rsi,%r14
  pushq  %r13
  movq   %rdi,%r13
  pushq  %r12
  movq   %rdx,%r12
  pushq  %rbp
  pushq  %rbx
  movq   %rcx,%rbx
  subq   $0x48,%rsp
  testq  %rcx,%rcx
  cmoveq %rax,%rbx
  xorl   %ebp,%ebp
  callq  .L_401420
  movq   %rax,%r15
  movl   (%rax),%eax
  testq  %r12,%r12
  sete   %bpl
  orl    0x4(%rbx),%ebp
  leaq   0x8(%rbx),%r10
  movq   %r14,%rcx
  movq   %r13,%rdx
  xorl   %esi,%esi
  movl   %eax,0x1c(%rsp)
  movq   0x30(%rbx),%rax
  xorl   %edi,%edi
  movq   %r10,0x30(%rsp)
  movl   %ebp,%r9d
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %r10,(%rsp)
  movq   %rax,0x8(%rsp)
  movl   (%rbx),%r8d
  callq  .L_405e10
  leaq   0x1(%rax),%rsi
  movq   %rax,0x38(%rsp)
  movq   %rsi,%rdi
  movq   %rsi,0x28(%rsp)
  callq  .L_4077c0
  movq   %rax,%rdi
  movq   %rax,0x20(%rsp)
  movq   0x30(%rbx),%rax
  movq   0x30(%rsp),%r10
  movq   0x28(%rsp),%rsi
  movl   %ebp,%r9d
  movq   %r14,%rcx
  movq   %r13,%rdx
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %r10,(%rsp)
  movq   %rax,0x8(%rsp)
  movl   (%rbx),%r8d
  callq  .L_405e10
  movl   0x1c(%rsp),%eax
  testq  %r12,%r12
  movl   %eax,(%r15)
  je     .L_406db8
  movq   0x38(%rsp),%r11
  movq   %r11,(%r12)
.L_406db8:
  movq   0x20(%rsp),%rax
  addq   $0x48,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  .size quotearg_alloc_mem, .-quotearg_alloc_mem

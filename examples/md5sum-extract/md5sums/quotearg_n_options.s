  .text
  .globl quotearg_n_options
  .type quotearg_n_options, @function
quotearg_n_options:
  pushq  %r15
  movslq %edi,%r15
  pushq  %r14
  pushq  %r13
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %rcx,%rbx
  subq   $0x48,%rsp
  movq   %rsi,0x20(%rsp)
  movq   %rdx,0x28(%rsp)
  callq  .L_401420
  movq   %rax,%r13
  movl   (%rax),%eax
  testl  %r15d,%r15d
  movq   0x204b86(%rip),%r12        
  movl   %eax,0x34(%rsp)
  js     .L_404867
  cmpl   0x204b8d(%rip),%r15d        
  jb     .L_40476a
  leal   0x1(%r15),%ebp
  movl   %ebp,%r14d
  movq   %r14,%rsi
  shlq   $0x4,%rsi
  cmpq   $0x609280,%r12
  jne    .L_404850
  xorl   %edi,%edi
  callq  .L_405510
  movq   0x204b52(%rip),%rsi        
  movq   0x204b53(%rip),%rdi        
  movq   %rax,%r12
  movq   %rax,0x204b39(%rip)        
  movq   %rsi,(%rax)
  movq   %rdi,0x8(%rax)
.L_404746:
  movl   0x204b44(%rip),%edi        
  movq   %r14,%rdx
  xorl   %esi,%esi
  subq   %rdi,%rdx
  shlq   $0x4,%rdi
  shlq   $0x4,%rdx
  addq   %r12,%rdi
  callq  .L_401560
  movl   %ebp,0x204b26(%rip)        
.L_40476a:
  movq   0x30(%rbx),%rax
  shlq   $0x4,%r15
  movl   0x4(%rbx),%ebp
  addq   %r15,%r12
  movl   (%rbx),%r8d
  leaq   0x8(%rbx),%r15
  movq   (%r12),%r11
  movq   0x8(%r12),%r14
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  orl    $0x1,%ebp
  movq   0x28(%rsp),%rcx
  movq   0x20(%rsp),%rdx
  movl   %ebp,%r9d
  movq   %r11,%rsi
  movq   %r15,(%rsp)
  movq   %r14,%rdi
  movq   %rax,0x8(%rsp)
  movq   %r11,0x38(%rsp)
  callq  .L_403b10
  movq   0x38(%rsp),%r11
  cmpq   %rax,%r11
  ja     .L_40482f
  leaq   0x1(%rax),%rsi
  cmpq   $0x609320,%r14
  movq   %rsi,(%r12)
  je     .L_4047e7
  movq   %r14,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_401400
  movq   0x38(%rsp),%rsi
.L_4047e7:
  movq   %rsi,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_4054c0
  movq   %rax,0x8(%r12)
  movq   %rax,%r14
  movq   0x30(%rbx),%rax
  movl   (%rbx),%r8d
  movq   0x28(%rsp),%rcx
  movl   %ebp,%r9d
  movq   0x20(%rsp),%rdx
  movq   0x38(%rsp),%rsi
  movq   %r14,%rdi
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %r15,(%rsp)
  movq   %rax,0x8(%rsp)
  callq  .L_403b10
.L_40482f:
  movl   0x34(%rsp),%eax
  movl   %eax,0x0(%r13)
  addq   $0x48,%rsp
  movq   %r14,%rax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_404850:
  movq   %r12,%rdi
  callq  .L_405510
  movq   %rax,%r12
  movq   %rax,0x204a16(%rip)        
  jmpq   .L_404746
.L_404867:
  callq  .L_401410
  nop
  .size quotearg_n_options, .-quotearg_n_options

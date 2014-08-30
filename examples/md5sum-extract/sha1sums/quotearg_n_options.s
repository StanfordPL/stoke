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
  movq   0x205016(%rip),%r12        
  movl   %eax,0x34(%rsp)
  js     .L_4053d7
  cmpl   0x20501d(%rip),%r15d        
  jb     .L_4052da
  leal   0x1(%r15),%ebp
  movl   %ebp,%r14d
  movq   %r14,%rsi
  shlq   $0x4,%rsi
  cmpq   $0x60a280,%r12
  jne    .L_4053c0
  xorl   %edi,%edi
  callq  .L_406080
  movq   0x204fe2(%rip),%rsi        
  movq   0x204fe3(%rip),%rdi        
  movq   %rax,%r12
  movq   %rax,0x204fc9(%rip)        
  movq   %rsi,(%rax)
  movq   %rdi,0x8(%rax)
.L_4052b6:
  movl   0x204fd4(%rip),%edi        
  movq   %r14,%rdx
  xorl   %esi,%esi
  subq   %rdi,%rdx
  shlq   $0x4,%rdi
  shlq   $0x4,%rdx
  addq   %r12,%rdi
  callq  .L_401560
  movl   %ebp,0x204fb6(%rip)        
.L_4052da:
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
  callq  .L_404680
  movq   0x38(%rsp),%r11
  cmpq   %rax,%r11
  ja     .L_40539f
  leaq   0x1(%rax),%rsi
  cmpq   $0x60a320,%r14
  movq   %rsi,(%r12)
  je     .L_405357
  movq   %r14,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_401400
  movq   0x38(%rsp),%rsi
.L_405357:
  movq   %rsi,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_406030
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
  callq  .L_404680
.L_40539f:
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
.L_4053c0:
  movq   %r12,%rdi
  callq  .L_406080
  movq   %rax,%r12
  movq   %rax,0x204ea6(%rip)        
  jmpq   .L_4052b6
.L_4053d7:
  callq  .L_401410
  nop
  .size quotearg_n_options, .-quotearg_n_options

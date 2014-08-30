  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function
__libc_csu_init:
  pushq  %r15
  movl   %edi,%r15d
  pushq  %r14
  movq   %rsi,%r14
  pushq  %r13
  movq   %rdx,%r13
  pushq  %r12
  leaq   0x202fc8(%rip),%r12        
  pushq  %rbp
  leaq   0x202fc8(%rip),%rbp        
  pushq  %rbx
  subq   %r12,%rbp
  xorl   %ebx,%ebx
  sarq   $0x3,%rbp
  subq   $0x8,%rsp
  callq  .L_4013a8
  testq  %rbp,%rbp
  je     .L_405e86
  nop
.L_405e70:
  movq   %r13,%rdx
  movq   %r14,%rsi
  movl   %r15d,%edi
  callq  *(%r12,%rbx,8)
  addq   $0x1,%rbx
  cmpq   %rbp,%rbx
  jne    .L_405e70
.L_405e86:
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  .size __libc_csu_init, .-__libc_csu_init

  .text
  .globl sha256_process_bytes
  .type sha256_process_bytes, @function
sha256_process_bytes:
  pushq  %r15
  pushq  %r14
  pushq  %r13
  pushq  %r12
  movq   %rdi,%r12
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movq   %rsi,%rbx
  subq   $0x8,%rsp
  movq   0x28(%rdx),%r13
  testq  %r13,%r13
  jne    .L_405630
.L_4055b4:
  cmpq   $0x3f,%rbx
  ja     .L_405610
.L_4055ba:
  testq  %rbx,%rbx
  jne    .L_4055d0
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  xchgw  %ax,%ax
.L_4055d0:
  movq   0x28(%rbp),%r13
  leaq   0x30(%rbp),%r14
  movq   %rbx,%rdx
  movq   %r12,%rsi
  leaq   (%r14,%r13,1),%rdi
  addq   %r13,%rbx
  callq  .L_401610
  cmpq   $0x3f,%rbx
  ja     .L_405670
.L_4055f4:
  movq   %rbx,0x28(%rbp)
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_405610:
  movq   %rbx,%r13
  movq   %r12,%rdi
  movq   %rbp,%rdx
  andq   $0xffffffffffffffc0,%r13
  andl   $0x3f,%ebx
  movq   %r13,%rsi
  addq   %r13,%r12
  callq  .L_402c50
  jmpq    .L_4055ba
  nop
.L_405630:
  movl   $0x80,%r14d
  leaq   0x30(%rdx),%r15
  subq   %r13,%r14
  cmpq   %r14,%rsi
  leaq   (%r15,%r13,1),%rdi
  cmovbeq %rsi,%r14
  movq   %r12,%rsi
  movq   %r14,%rdx
  callq  .L_401610
  movq   %r14,%rsi
  addq   0x28(%rbp),%rsi
  cmpq   $0x40,%rsi
  movq   %rsi,0x28(%rbp)
  ja     .L_4056a0
.L_405664:
  addq   %r14,%r12
  subq   %r14,%rbx
  jmpq   .L_4055b4
  nop
.L_405670:
  movq   %rbp,%rdx
  movq   %r14,%rdi
  movl   $0x40,%esi
  callq  .L_402c50
  subq   $0x40,%rbx
  leaq   0x70(%rbp),%rsi
  movq   %r14,%rdi
  movq   %rbx,%rdx
  callq  .L_401610
  jmpq   .L_4055f4
  nop
.L_4056a0:
  andq   $0xffffffffffffffc0,%rsi
  movq   %rbp,%rdx
  movq   %r15,%rdi
  callq  .L_402c50
  movq   0x28(%rbp),%rdx
  addq   %r14,%r13
  movq   %r15,%rdi
  andq   $0xffffffffffffffc0,%r13
  leaq   (%r15,%r13,1),%rsi
  andl   $0x3f,%edx
  movq   %rdx,0x28(%rbp)
  callq  .L_401610
  jmpq    .L_405664
  nop
  .size sha256_process_bytes, .-sha256_process_bytes

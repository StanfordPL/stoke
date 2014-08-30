  .text
  .globl md5_process_bytes
  .type md5_process_bytes, @function
md5_process_bytes:
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
  movl   0x18(%rdx),%eax
  testl  %eax,%eax
  jne    .L_403570
.L_4034f2:
  cmpq   $0x3f,%rbx
  ja     .L_403550
.L_4034f8:
  testq  %rbx,%rbx
  jne    .L_403510
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_403510:
  movl   0x18(%rbp),%r13d
  leaq   0x1c(%rbp),%r14
  movq   %rbx,%rdx
  movq   %r12,%rsi
  leaq   (%r14,%r13,1),%rdi
  addq   %r13,%rbx
  callq  .L_401610
  cmpq   $0x3f,%rbx
  ja     .L_4035b0
.L_403534:
  movl   %ebx,0x18(%rbp)
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_403550:
  movq   %rbx,%r13
  movq   %r12,%rdi
  movq   %rbp,%rdx
  andq   $0xffffffffffffffc0,%r13
  andl   $0x3f,%ebx
  movq   %r13,%rsi
  addq   %r13,%r12
  callq  .L_402bd0
  jmpq    .L_4034f8
  nop
.L_403570:
  movl   %eax,%r14d
  movl   $0x80,%r13d
  leaq   0x1c(%rdx),%r15
  subq   %r14,%r13
  cmpq   %rsi,%r13
  leaq   (%r15,%r14,1),%rdi
  cmovaq %rsi,%r13
  movq   %r12,%rsi
  movq   %r13,%rdx
  callq  .L_401610
  movl   0x18(%rbp),%esi
  addl   %r13d,%esi
  cmpl   $0x40,%esi
  movl   %esi,0x18(%rbp)
  ja     .L_4035e0
.L_4035a4:
  addq   %r13,%r12
  subq   %r13,%rbx
  jmpq   .L_4034f2
  nop
.L_4035b0:
  movq   %rbp,%rdx
  movq   %r14,%rdi
  movl   $0x40,%esi
  callq  .L_402bd0
  subq   $0x40,%rbx
  leaq   0x5c(%rbp),%rsi
  movq   %r14,%rdi
  movq   %rbx,%rdx
  callq  .L_401610
  jmpq   .L_403534
  nop
.L_4035e0:
  andl   $0xffffffc0,%esi
  movq   %rbp,%rdx
  movq   %r15,%rdi
  callq  .L_402bd0
  movl   0x18(%rbp),%edx
  addq   %r13,%r14
  movq   %r15,%rdi
  andq   $0xffffffffffffffc0,%r14
  leaq   (%r15,%r14,1),%rsi
  andl   $0x3f,%edx
  movl   %edx,0x18(%rbp)
  callq  .L_401610
  jmpq    .L_4035a4
  nop
  .size md5_process_bytes, .-md5_process_bytes

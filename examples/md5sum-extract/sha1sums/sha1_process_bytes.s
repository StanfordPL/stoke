  .text
  .globl sha1_process_bytes
  .type sha1_process_bytes, @function
sha1_process_bytes:
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
  movl   0x1c(%rdx),%eax
  testl  %eax,%eax
  jne    .L_4040c0
.L_404042:
  cmpq   $0x3f,%rbx
  ja     .L_4040a0
.L_404048:
  testq  %rbx,%rbx
  jne    .L_404060
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_404060:
  movl   0x1c(%rbp),%r13d
  leaq   0x20(%rbp),%r14
  movq   %rbx,%rdx
  movq   %r12,%rsi
  leaq   (%r14,%r13,1),%rdi
  addq   %r13,%rbx
  callq  .L_401610
  cmpq   $0x3f,%rbx
  ja     .L_404100
.L_404084:
  movl   %ebx,0x1c(%rbp)
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_4040a0:
  movq   %rbx,%r13
  movq   %r12,%rdi
  movq   %rbp,%rdx
  andq   $0xffffffffffffffc0,%r13
  andl   $0x3f,%ebx
  movq   %r13,%rsi
  addq   %r13,%r12
  callq  .L_402be0
  jmpq    .L_404048
  nop
.L_4040c0:
  movl   %eax,%r14d
  movl   $0x80,%r13d
  leaq   0x20(%rdx),%r15
  subq   %r14,%r13
  cmpq   %rsi,%r13
  leaq   (%r15,%r14,1),%rdi
  cmovaq %rsi,%r13
  movq   %r12,%rsi
  movq   %r13,%rdx
  callq  .L_401610
  movl   0x1c(%rbp),%esi
  addl   %r13d,%esi
  cmpl   $0x40,%esi
  movl   %esi,0x1c(%rbp)
  ja     .L_404130
.L_4040f4:
  addq   %r13,%r12
  subq   %r13,%rbx
  jmpq   .L_404042
  nop
.L_404100:
  movq   %rbp,%rdx
  movq   %r14,%rdi
  movl   $0x40,%esi
  callq  .L_402be0
  subq   $0x40,%rbx
  leaq   0x60(%rbp),%rsi
  movq   %r14,%rdi
  movq   %rbx,%rdx
  callq  .L_401610
  jmpq   .L_404084
  nop
.L_404130:
  andl   $0xffffffc0,%esi
  movq   %rbp,%rdx
  movq   %r15,%rdi
  callq  .L_402be0
  movl   0x1c(%rbp),%edx
  addq   %r13,%r14
  movq   %r15,%rdi
  andq   $0xffffffffffffffc0,%r14
  leaq   (%r15,%r14,1),%rsi
  andl   $0x3f,%edx
  movl   %edx,0x1c(%rbp)
  callq  .L_401610
  jmpq    .L_4040f4
  nop
  .size sha1_process_bytes, .-sha1_process_bytes

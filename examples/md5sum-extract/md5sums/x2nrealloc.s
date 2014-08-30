  .text
  .globl x2nrealloc
  .type x2nrealloc, @function
x2nrealloc:
  testq  %rdi,%rdi
  movq   %rdx,%r8
  movq   (%rsi),%rcx
  je     .L_4055c0
  xorl   %edx,%edx
  movq $0xaaaaaaaaaaaaaaaa,%rax
  divq   %r8
  cmpq   %rax,%rcx
  jae    .L_4055dc
  leaq   0x1(%rcx),%rax
  shrq $0x1,  %rax
  addq   %rax,%rcx
.L_4055a9:
  movq   %rcx,(%rsi)
  imulq  %r8,%rcx
  movq   %rcx,%rsi
  jmpq   .L_405510
  nop
.L_4055c0:
  testq  %rcx,%rcx
  jne    .L_4055a9
  xorl   %edx,%edx
  movl   $0x80,%eax
  xorl   %ecx,%ecx
  divq   %r8
  testq  %rax,%rax
  sete   %cl
  addq   %rax,%rcx
  jmpq    .L_4055a9
.L_4055dc:
  pushq  %rax
  callq  .L_4056d0
  nop
  .size x2nrealloc, .-x2nrealloc

  .text
  .globl x2nrealloc
  .type x2nrealloc, @function
x2nrealloc:
  testq  %rdi,%rdi
  movq   %rdx,%r8
  movq   (%rsi),%rcx
  je     .L_406130
  xorl   %edx,%edx
  movq $0xaaaaaaaaaaaaaaaa,%rax
  divq   %r8
  cmpq   %rax,%rcx
  jae    .L_40614c
  leaq   0x1(%rcx),%rax
  shrq $0x1,  %rax
  addq   %rax,%rcx
.L_406119:
  movq   %rcx,(%rsi)
  imulq  %r8,%rcx
  movq   %rcx,%rsi
  jmpq   .L_406080
  nop
.L_406130:
  testq  %rcx,%rcx
  jne    .L_406119
  xorl   %edx,%edx
  movl   $0x80,%eax
  xorl   %ecx,%ecx
  divq   %r8
  testq  %rax,%rax
  sete   %cl
  addq   %rax,%rcx
  jmpq    .L_406119
.L_40614c:
  pushq  %rax
  callq  .L_406240
  nop
  .size x2nrealloc, .-x2nrealloc

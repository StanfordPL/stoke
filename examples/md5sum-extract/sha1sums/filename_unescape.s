  .text
  .globl filename_unescape
  .type filename_unescape, @function
filename_unescape:
  xorl   %edx,%edx
  testq  %rsi,%rsi
  leaq   0x1(%rdi),%r8
  leaq   -0x1(%rsi),%r9
  je     .L_402627
.L_4025cf:
  movzbl (%rdi,%rdx,1),%ecx
  testb  %cl,%cl
  je     .L_402600
  cmpb   $0x5c,%cl
  jne    .L_402608
  cmpq   %rdx,%r9
  je     .L_402600
  addq   $0x1,%rdx
  movzbl (%rdi,%rdx,1),%eax
  cmpb   $0x5c,%al
  je     .L_402630
  cmpb   $0x6e,%al
  jne    .L_402600
  movq   %r8,%rax
  movb   $0xa,-0x1(%r8)
  jmpq    .L_40260f
  nop
.L_402600:
  xorl   %eax,%eax
  retq   
  nop
.L_402608:
  movq   %r8,%rax
  movb   %cl,-0x1(%r8)
.L_40260f:
  addq   $0x1,%rdx
  addq   $0x1,%r8
  cmpq   %rdx,%rsi
  ja     .L_4025cf
  addq   %rdi,%rsi
  cmpq   %rsi,%rax
  jae    .L_402627
  movb   $0x0,(%rax)
.L_402627:
  movq   %rdi,%rax
  retq   
  nop
.L_402630:
  movq   %r8,%rax
  movb   $0x5c,-0x1(%r8)
  jmpq    .L_40260f
  nop
  .size filename_unescape, .-filename_unescape

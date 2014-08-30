  .text
  .globl fopen_safer
  .type fopen_safer, @function
fopen_safer:
  pushq  %r12
  movq   %rsi,%r12
  pushq  %rbp
  xorl   %ebp,%ebp
  pushq  %rbx
  callq  .L_401710
  testq  %rax,%rax
  movq   %rax,%rbx
  je     .L_404406
  movq   %rax,%rdi
  movq   %rbx,%rbp
  callq  .L_401620
  cmpl   $0x2,%eax
  jbe    .L_404410
.L_404406:
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
  xchgw  %ax,%ax
.L_404410:
  movl   %eax,%edi
  callq  .L_405a10
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_404443
  movq   %rbp,%rdi
  callq  .L_406280
  testl  %eax,%eax
  jne    .L_404460
  movq   %r12,%rsi
  movl   %ebx,%edi
  callq  .L_4016a0
  testq  %rax,%rax
  je     .L_404460
  movq   %rax,%rbp
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
.L_404443:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbx
  movq   %rbp,%rdi
  callq  .L_406280
  xorl   %ebp,%ebp
  movl   %r12d,(%rbx)
  jmpq    .L_404406
  nop
.L_404460:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   %r12d,0x0(%rbp)
  xorl   %ebp,%ebp
  jmpq    .L_404406
  nop
  .size fopen_safer, .-fopen_safer

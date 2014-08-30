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
  je     .L_405b96
  movq   %rax,%rdi
  movq   %rbx,%rbp
  callq  .L_401620
  cmpl   $0x2,%eax
  jbe    .L_405ba0
.L_405b96:
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
  xchgw  %ax,%ax
.L_405ba0:
  movl   %eax,%edi
  callq  .L_4071a0
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_405bd3
  movq   %rbp,%rdi
  callq  .L_407a10
  testl  %eax,%eax
  jne    .L_405bf0
  movq   %r12,%rsi
  movl   %ebx,%edi
  callq  .L_4016a0
  testq  %rax,%rax
  je     .L_405bf0
  movq   %rax,%rbp
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
.L_405bd3:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbx
  movq   %rbp,%rdi
  callq  .L_407a10
  xorl   %ebp,%ebp
  movl   %r12d,(%rbx)
  jmpq    .L_405b96
  nop
.L_405bf0:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   %r12d,0x0(%rbp)
  xorl   %ebp,%ebp
  jmpq    .L_405b96
  nop
  .size fopen_safer, .-fopen_safer

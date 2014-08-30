  .text
  .globl gettext_quote
  .type gettext_quote, @function
gettext_quote:
  pushq  %r13
  movl   $0x5,%edx
  pushq  %r12
  movl   %esi,%r12d
  movq   %rdi,%rsi
  pushq  %rbp
  movq   %rdi,%rbp
  xorl   %edi,%edi
  pushq  %rbx
  subq   $0x8,%rsp
  callq  .L_4014c0
  cmpq   %rbp,%rax
  movq   %rax,%rbx
  je     .L_403a58
.L_403a47:
  addq   $0x8,%rsp
  movq   %rbx,%rax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_403a58:
  callq  .L_405a00
  movzbl (%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x55,%dl
  jne    .L_403ac0
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x54,%dl
  jne    .L_403aa8
  movzbl 0x2(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x46,%dl
  jne    .L_403aa8
  cmpb   $0x2d,0x3(%rax)
  jne    .L_403aa8
  cmpb   $0x38,0x4(%rax)
  jne    .L_403aa8
  cmpb   $0x0,0x5(%rax)
  jne    .L_403aa8
  cmpb   $0x60,(%rbx)
  movl   $0x406b33,%eax
  movl   $0x406b24,%ebx
  cmoveq %rax,%rbx
  jmpq    .L_403a47
  nop
.L_403aa8:
  movl   $0x406b2d,%ebx
  cmpl   $0x7,%r12d
  movl   $0x406b2b,%eax
  cmovneq %rax,%rbx
  jmpq    .L_403a47
  nop
.L_403ac0:
  cmpb   $0x47,%dl
  jne    .L_403aa8
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x42,%dl
  jne    .L_403aa8
  cmpb   $0x31,0x2(%rax)
  jne    .L_403aa8
  cmpb   $0x38,0x3(%rax)
  jne    .L_403aa8
  cmpb   $0x30,0x4(%rax)
  jne    .L_403aa8
  cmpb   $0x33,0x5(%rax)
  jne    .L_403aa8
  cmpb   $0x30,0x6(%rax)
  jne    .L_403aa8
  cmpb   $0x0,0x7(%rax)
  jne    .L_403aa8
  movq   %rbx,%r13
  movl   $0x406b28,%eax
  movl   $0x406b2f,%ebx
  cmpb   $0x60,0x0(%r13)
  cmovneq %rax,%rbx
  jmpq   .L_403a47
  .size gettext_quote, .-gettext_quote

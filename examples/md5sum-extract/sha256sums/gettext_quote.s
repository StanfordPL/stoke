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
  je     .L_405d58
.L_405d47:
  addq   $0x8,%rsp
  movq   %rbx,%rax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_405d58:
  callq  .L_407d00
  movzbl (%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x55,%dl
  jne    .L_405dc0
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x54,%dl
  jne    .L_405da8
  movzbl 0x2(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x46,%dl
  jne    .L_405da8
  cmpb   $0x2d,0x3(%rax)
  jne    .L_405da8
  cmpb   $0x38,0x4(%rax)
  jne    .L_405da8
  cmpb   $0x0,0x5(%rax)
  jne    .L_405da8
  cmpb   $0x60,(%rbx)
  movl   $0x408e33,%eax
  movl   $0x408e24,%ebx
  cmoveq %rax,%rbx
  jmpq    .L_405d47
  nop
.L_405da8:
  movl   $0x408e2d,%ebx
  cmpl   $0x7,%r12d
  movl   $0x408e2b,%eax
  cmovneq %rax,%rbx
  jmpq    .L_405d47
  nop
.L_405dc0:
  cmpb   $0x47,%dl
  jne    .L_405da8
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x42,%dl
  jne    .L_405da8
  cmpb   $0x31,0x2(%rax)
  jne    .L_405da8
  cmpb   $0x38,0x3(%rax)
  jne    .L_405da8
  cmpb   $0x30,0x4(%rax)
  jne    .L_405da8
  cmpb   $0x33,0x5(%rax)
  jne    .L_405da8
  cmpb   $0x30,0x6(%rax)
  jne    .L_405da8
  cmpb   $0x0,0x7(%rax)
  jne    .L_405da8
  movq   %rbx,%r13
  movl   $0x408e28,%eax
  movl   $0x408e2f,%ebx
  cmpb   $0x60,0x0(%r13)
  cmovneq %rax,%rbx
  jmpq   .L_405d47
  .size gettext_quote, .-gettext_quote

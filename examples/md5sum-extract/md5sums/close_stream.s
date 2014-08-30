  .text
  .globl close_stream
  .type close_stream, @function
close_stream:
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  callq  .L_401460
  movl   0x0(%rbp),%ebx
  movq   %rbp,%rdi
  movq   %rax,%r12
  callq  .L_405710
  andl   $0x20,%ebx
  testl  %eax,%eax
  setne  %dl
  testl  %ebx,%ebx
  jne    .L_4059c0
  testb  %dl,%dl
  je     .L_4059b4
  testq  %r12,%r12
  movl   $0xffffffff,%ebx
  je     .L_4059e0
.L_4059b4:
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_4059c0:
  testb  %dl,%dl
  movl   $0xffffffff,%ebx
  jne    .L_4059b4
  callq  .L_401420
  movl   $0x0,(%rax)
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_4059e0:
  callq  .L_401420
  xorl   %ebx,%ebx
  cmpl   $0x9,(%rax)
  setne  %bl
  negl   %ebx
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
  .size close_stream, .-close_stream

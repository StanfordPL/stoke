  .text
  .globl rpl_fcntl
  .type rpl_fcntl, @function
rpl_fcntl:
.L_405790:
  pushq  %r12
  pushq  %rbp
  movl   %edi,%ebp
  pushq  %rbx
  subq   $0x50,%rsp
  cmpl   $0x406,%esi
  leaq   0x70(%rsp),%rax
  movq   %rdx,0x30(%rsp)
  movq   %rcx,0x38(%rsp)
  movl   $0x10,0x8(%rsp)
  movq   %rax,0x10(%rsp)
  leaq   0x20(%rsp),%rax
  movq   %rax,0x18(%rsp)
  jne    .L_405860
  movl   0x10(%rax),%r12d
  movl   0x203c82(%rip),%eax        
  movl   $0x18,0x8(%rsp)
  testl  %eax,%eax
  movl   %r12d,%edx
  js     .L_405880
  xorl   %eax,%eax
  callq  .L_401470
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_405890
.L_4057fa:
  movl   $0x1,0x203c54(%rip)        
.L_405804:
  testl  %ebx,%ebx
  js     .L_405872
  cmpl   $0xffffffff,0x203c49(%rip)        
  jne    .L_405872
.L_405811:
  xorl   %eax,%eax
  movl   $0x1,%esi
  movl   %ebx,%edi
  callq  .L_401470
  testl  %eax,%eax
  js     .L_40583b
  orl    $0x1,%eax
  movl   $0x2,%esi
  movl   %ebx,%edi
  movl   %eax,%edx
  xorl   %eax,%eax
  callq  .L_401470
  cmpl   $0xffffffff,%eax
  jne    .L_405872
.L_40583b:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   $0xffffffff,%ebx
  movl   %r12d,0x0(%rbp)
  jmpq    .L_405872
  nop
.L_405860:
  movq   0x18(%rsp),%rax
  movq   0x10(%rax),%rdx
  xorl   %eax,%eax
  callq  .L_401470
  movl   %eax,%ebx
.L_405872:
  addq   $0x50,%rsp
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_405880:
  xorl   %esi,%esi
  xorl   %eax,%eax
  callq  .L_405790
  movl   %eax,%ebx
  jmpq   .L_405804
.L_405890:
  callq  .L_401420
  cmpl   $0x16,(%rax)
  jne    .L_4057fa
  xorl   %esi,%esi
  xorl   %eax,%eax
  movl   %r12d,%edx
  movl   %ebp,%edi
  callq  .L_405790
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_405872
  movl   $0xffffffff,0x203b9c(%rip)        
  jmpq   .L_405811
  nop
  nop
  .size rpl_fcntl, .-rpl_fcntl

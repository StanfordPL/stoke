  .text
  .globl rpl_fcntl
  .type rpl_fcntl, @function
rpl_fcntl:
.L_407a90:
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
  jne    .L_407b60
  movl   0x10(%rax),%r12d
  movl   0x203982(%rip),%eax        
  movl   $0x18,0x8(%rsp)
  testl  %eax,%eax
  movl   %r12d,%edx
  js     .L_407b80
  xorl   %eax,%eax
  callq  .L_401470
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_407b90
.L_407afa:
  movl   $0x1,0x203954(%rip)        
.L_407b04:
  testl  %ebx,%ebx
  js     .L_407b72
  cmpl   $0xffffffff,0x203949(%rip)        
  jne    .L_407b72
.L_407b11:
  xorl   %eax,%eax
  movl   $0x1,%esi
  movl   %ebx,%edi
  callq  .L_401470
  testl  %eax,%eax
  js     .L_407b3b
  orl    $0x1,%eax
  movl   $0x2,%esi
  movl   %ebx,%edi
  movl   %eax,%edx
  xorl   %eax,%eax
  callq  .L_401470
  cmpl   $0xffffffff,%eax
  jne    .L_407b72
.L_407b3b:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   $0xffffffff,%ebx
  movl   %r12d,0x0(%rbp)
  jmpq    .L_407b72
  nop
.L_407b60:
  movq   0x18(%rsp),%rax
  movq   0x10(%rax),%rdx
  xorl   %eax,%eax
  callq  .L_401470
  movl   %eax,%ebx
.L_407b72:
  addq   $0x50,%rsp
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_407b80:
  xorl   %esi,%esi
  xorl   %eax,%eax
  callq  .L_407a90
  movl   %eax,%ebx
  jmpq   .L_407b04
.L_407b90:
  callq  .L_401420
  cmpl   $0x16,(%rax)
  jne    .L_407afa
  xorl   %esi,%esi
  xorl   %eax,%eax
  movl   %r12d,%edx
  movl   %ebp,%edi
  callq  .L_407a90
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_407b72
  movl   $0xffffffff,0x20389c(%rip)        
  jmpq   .L_407b11
  nop
  nop
  .size rpl_fcntl, .-rpl_fcntl

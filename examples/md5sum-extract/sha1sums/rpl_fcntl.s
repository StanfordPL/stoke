  .text
  .globl rpl_fcntl
  .type rpl_fcntl, @function
rpl_fcntl:
.L_406300:
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
  jne    .L_4063d0
  movl   0x10(%rax),%r12d
  movl   0x204112(%rip),%eax        
  movl   $0x18,0x8(%rsp)
  testl  %eax,%eax
  movl   %r12d,%edx
  js     .L_4063f0
  xorl   %eax,%eax
  callq  .L_401470
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_406400
.L_40636a:
  movl   $0x1,0x2040e4(%rip)        
.L_406374:
  testl  %ebx,%ebx
  js     .L_4063e2
  cmpl   $0xffffffff,0x2040d9(%rip)        
  jne    .L_4063e2
.L_406381:
  xorl   %eax,%eax
  movl   $0x1,%esi
  movl   %ebx,%edi
  callq  .L_401470
  testl  %eax,%eax
  js     .L_4063ab
  orl    $0x1,%eax
  movl   $0x2,%esi
  movl   %ebx,%edi
  movl   %eax,%edx
  xorl   %eax,%eax
  callq  .L_401470
  cmpl   $0xffffffff,%eax
  jne    .L_4063e2
.L_4063ab:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   $0xffffffff,%ebx
  movl   %r12d,0x0(%rbp)
  jmpq    .L_4063e2
  nop
.L_4063d0:
  movq   0x18(%rsp),%rax
  movq   0x10(%rax),%rdx
  xorl   %eax,%eax
  callq  .L_401470
  movl   %eax,%ebx
.L_4063e2:
  addq   $0x50,%rsp
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_4063f0:
  xorl   %esi,%esi
  xorl   %eax,%eax
  callq  .L_406300
  movl   %eax,%ebx
  jmpq   .L_406374
.L_406400:
  callq  .L_401420
  cmpl   $0x16,(%rax)
  jne    .L_40636a
  xorl   %esi,%esi
  xorl   %eax,%eax
  movl   %r12d,%edx
  movl   %ebp,%edi
  callq  .L_406300
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_4063e2
  movl   $0xffffffff,0x20402c(%rip)        
  jmpq   .L_406381
  nop
  nop
  .size rpl_fcntl, .-rpl_fcntl

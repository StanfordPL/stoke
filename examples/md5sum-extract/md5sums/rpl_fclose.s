  .text
  .globl rpl_fclose
  .type rpl_fclose, @function
rpl_fclose:
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401620
  testl  %eax,%eax
  movq   %rbx,%rdi
  js     .L_40577f
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_405760
.L_40572c:
  movq   %rbx,%rdi
  callq  .L_4058d0
  testl  %eax,%eax
  je     .L_40577c
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rbx,%rdi
  movq   %rax,%rbp
  callq  .L_4014a0
  testl  %r12d,%r12d
  je     .L_405759
  movl   %r12d,0x0(%rbp)
  movl   $0xffffffff,%eax
.L_405759:
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  xchgw  %ax,%ax
.L_405760:
  movq   %rbx,%rdi
  callq  .L_401620
  xorl   %esi,%esi
  movl   $0x1,%edx
  movl   %eax,%edi
  callq  .L_401550
  cmpq   $0xffffffffffffffff,%rax
  jne    .L_40572c
.L_40577c:
  movq   %rbx,%rdi
.L_40577f:
  popq   %rbx
  popq   %rbp
  popq   %r12
  jmpq   .L_4014a0
  nop
  .size rpl_fclose, .-rpl_fclose

  .text
  .globl rpl_fflush
  .type rpl_fflush, @function
rpl_fflush:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_407be2
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_407bf0
.L_407be2:
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  nop
.L_407bf0:
  testl  $0x100,(%rbx)
  je     .L_407be2
  movq   %rbx,%rdi
  movl   $0x1,%edx
  xorl   %esi,%esi
  callq  .L_407c10
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  .size rpl_fflush, .-rpl_fflush

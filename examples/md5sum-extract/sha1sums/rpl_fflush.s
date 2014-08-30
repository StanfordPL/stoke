  .text
  .globl rpl_fflush
  .type rpl_fflush, @function
rpl_fflush:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_406452
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_406460
.L_406452:
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  nop
.L_406460:
  testl  $0x100,(%rbx)
  je     .L_406452
  movq   %rbx,%rdi
  movl   $0x1,%edx
  xorl   %esi,%esi
  callq  .L_406480
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  .size rpl_fflush, .-rpl_fflush

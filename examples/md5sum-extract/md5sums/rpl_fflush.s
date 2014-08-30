  .text
  .globl rpl_fflush
  .type rpl_fflush, @function
rpl_fflush:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_4058e2
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_4058f0
.L_4058e2:
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  nop
.L_4058f0:
  testl  $0x100,(%rbx)
  je     .L_4058e2
  movq   %rbx,%rdi
  movl   $0x1,%edx
  xorl   %esi,%esi
  callq  .L_405910
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  .size rpl_fflush, .-rpl_fflush

  .text
  .globl frame_dummy
  .type frame_dummy, @function
frame_dummy:
  cmpq   $0x0,0x2006f8(%rip)        
  je     .L_400738
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_400738
  pushq  %rbp
  movl   $0x600e10,%edi
  movq   %rsp,%rbp
  callq  *%rax
  popq   %rbp
  jmpq   .L_4006b0
  nop
.L_400738:
  jmpq   .L_4006b0
  nop
  .size frame_dummy, .-frame_dummy

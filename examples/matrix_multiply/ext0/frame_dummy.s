  .text
  .globl frame_dummy
  .type frame_dummy, @function
frame_dummy:
  cmpq   $0x0,0x200918(%rip)        
  je     .L_400528
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_400528
  pushq  %rbp
  movl   $0x600e20,%edi
  movq   %rsp,%rbp
  callq  *%rax
  popq   %rbp
  jmpq   .L_4004a0
  nop
.L_400528:
  jmpq   .L_4004a0
  .size frame_dummy, .-frame_dummy

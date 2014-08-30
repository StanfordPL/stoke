  .text
  .globl frame_dummy
  .type frame_dummy, @function
frame_dummy:
  cmpq   $0x0,0x207888(%rip)        
  je     .L_4025b8
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_4025b8
  pushq  %rbp
  movl   $0x609e20,%edi
  movq   %rsp,%rbp
  callq  *%rax
  popq   %rbp
  jmpq   .L_402530
  nop
.L_4025b8:
  jmpq   .L_402530
  nop
  .size frame_dummy, .-frame_dummy

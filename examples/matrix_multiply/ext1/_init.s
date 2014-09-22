  .text
  .globl _init
  .type _init, @function
_init:
  subq   $0x8,%rsp
  movq   0x200c0d(%rip),%rax        
  testq  %rax,%rax
  je     .L_4003f5
  callq  .L_400420
.L_4003f5:
  addq   $0x8,%rsp
  retq   
  .size _init, .-_init

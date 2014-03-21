  .text
  .globl _init
  .type _init, @function
_init:
  subq   $0x8,%rsp
  movq   0x200a95(%rip),%rax        
  testq  %rax,%rax
  je     .L_40056d
  callq  .L_400590
.L_40056d:
  addq   $0x8,%rsp
  retq   
  .size _init, .-_init

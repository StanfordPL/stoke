  .text
  .globl xcalloc
  .type xcalloc, @function
xcalloc:
  subq   $0x8,%rsp
  callq  .L_4015d0
  testq  %rax,%rax
  je     .L_4061e3
  addq   $0x8,%rsp
  retq   
.L_4061e3:
  callq  .L_406240
  nop
  .size xcalloc, .-xcalloc

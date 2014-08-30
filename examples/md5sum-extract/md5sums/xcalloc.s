  .text
  .globl xcalloc
  .type xcalloc, @function
xcalloc:
  subq   $0x8,%rsp
  callq  .L_4015d0
  testq  %rax,%rax
  je     .L_405673
  addq   $0x8,%rsp
  retq   
.L_405673:
  callq  .L_4056d0
  nop
  .size xcalloc, .-xcalloc

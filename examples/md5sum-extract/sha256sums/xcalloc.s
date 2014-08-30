  .text
  .globl xcalloc
  .type xcalloc, @function
xcalloc:
  subq   $0x8,%rsp
  callq  .L_4015d0
  testq  %rax,%rax
  je     .L_407973
  addq   $0x8,%rsp
  retq   
.L_407973:
  callq  .L_4079d0
  nop
  .size xcalloc, .-xcalloc

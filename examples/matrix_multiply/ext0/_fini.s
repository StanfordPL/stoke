  .text
  .globl _fini
  .type _fini, @function
_fini:
  subq   $0x8,%rsp
  addq   $0x8,%rsp
  retq   
  .size _fini, .-_fini

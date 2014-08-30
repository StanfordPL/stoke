  .text
  .globl .fini
  .type .fini, @function
.fini:
  subq   $0x8,%rsp
  addq   $0x8,%rsp
  retq   
  .size .fini, .-.fini

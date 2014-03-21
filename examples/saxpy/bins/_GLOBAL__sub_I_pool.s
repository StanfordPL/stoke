  .text
  .globl _GLOBAL__sub_I_pool
  .type _GLOBAL__sub_I_pool, @function
_GLOBAL__sub_I_pool:
  subq   $0x8,%rsp
  movl   $0x701080,%edi
  callq  .L_4005a0
  movl   $0x601048,%edx
  movl   $0x701080,%esi
  movl   $0x4005d0,%edi
  addq   $0x8,%rsp
  jmpq   .L_4005c0
  .size _GLOBAL__sub_I_pool, .-_GLOBAL__sub_I_pool

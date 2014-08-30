  .text
  .globl md5_buffer
  .type md5_buffer, @function
md5_buffer:
  pushq  %rbx
  movq   %rdx,%rbx
  subq   $0xa0,%rsp
  movq   %rsp,%rdx
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  callq  .L_4034d0
  movq   %rbx,%rsi
  movq   %rsp,%rdi
  callq  .L_403420
  addq   $0xa0,%rsp
  popq   %rbx
  retq   
  xchgw  %ax,%ax
  .size md5_buffer, .-md5_buffer

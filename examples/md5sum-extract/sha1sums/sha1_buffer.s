  .text
  .globl sha1_buffer
  .type sha1_buffer, @function
sha1_buffer:
  pushq  %rbx
  movq   %rdx,%rbx
  subq   $0xa0,%rsp
  movq   %rsp,%rdx
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0xc3d2e1f0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x1c(%rsp)
  callq  .L_404020
  movq   %rbx,%rsi
  movq   %rsp,%rdi
  callq  .L_403f40
  addq   $0xa0,%rsp
  popq   %rbx
  retq   
  nop
  .size sha1_buffer, .-sha1_buffer

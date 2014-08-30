  .text
  .globl sha1_init_ctx
  .type sha1_init_ctx, @function
sha1_init_ctx:
  movl   $0x67452301,(%rdi)
  movl   $0xefcdab89,0x4(%rdi)
  movl   $0x98badcfe,0x8(%rdi)
  movl   $0x10325476,0xc(%rdi)
  movl   $0xc3d2e1f0,0x10(%rdi)
  movl   $0x0,0x18(%rdi)
  movl   $0x0,0x14(%rdi)
  movl   $0x0,0x1c(%rdi)
  retq   
  nop
  .size sha1_init_ctx, .-sha1_init_ctx

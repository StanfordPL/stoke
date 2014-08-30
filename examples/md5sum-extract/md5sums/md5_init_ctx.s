  .text
  .globl md5_init_ctx
  .type md5_init_ctx, @function
md5_init_ctx:
  movl   $0x67452301,(%rdi)
  movl   $0xefcdab89,0x4(%rdi)
  movl   $0x98badcfe,0x8(%rdi)
  movl   $0x10325476,0xc(%rdi)
  movl   $0x0,0x14(%rdi)
  movl   $0x0,0x10(%rdi)
  movl   $0x0,0x18(%rdi)
  retq   
  nop
  .size md5_init_ctx, .-md5_init_ctx

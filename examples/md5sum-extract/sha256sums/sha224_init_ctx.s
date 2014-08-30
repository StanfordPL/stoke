  .text
  .globl sha224_init_ctx
  .type sha224_init_ctx, @function
sha224_init_ctx:
  movl   $0xc1059ed8,(%rdi)
  movl   $0x367cd507,0x4(%rdi)
  movl   $0x3070dd17,0x8(%rdi)
  movl   $0xf70e5939,0xc(%rdi)
  movl   $0xffc00b31,0x10(%rdi)
  movl   $0x68581511,0x14(%rdi)
  movl   $0x64f98fa7,0x18(%rdi)
  movl   $0xbefa4fa4,0x1c(%rdi)
  movl   $0x0,0x24(%rdi)
  movl   $0x0,0x20(%rdi)
  movq   $0x0,0x28(%rdi)
  retq   
  xchgw  %ax,%ax
  .size sha224_init_ctx, .-sha224_init_ctx

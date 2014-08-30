  .text
  .globl sha256_init_ctx
  .type sha256_init_ctx, @function
sha256_init_ctx:
  movl   $0x6a09e667,(%rdi)
  movl   $0xbb67ae85,0x4(%rdi)
  movl   $0x3c6ef372,0x8(%rdi)
  movl   $0xa54ff53a,0xc(%rdi)
  movl   $0x510e527f,0x10(%rdi)
  movl   $0x9b05688c,0x14(%rdi)
  movl   $0x1f83d9ab,0x18(%rdi)
  movl   $0x5be0cd19,0x1c(%rdi)
  movl   $0x0,0x24(%rdi)
  movl   $0x0,0x20(%rdi)
  movq   $0x0,0x28(%rdi)
  retq   
  xchgw  %ax,%ax
  .size sha256_init_ctx, .-sha256_init_ctx

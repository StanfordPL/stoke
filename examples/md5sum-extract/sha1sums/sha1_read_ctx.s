  .text
  .globl sha1_read_ctx
  .type sha1_read_ctx, @function
sha1_read_ctx:
  movl   (%rdi),%edx
  movq   %rsi,%rax
  bswap  %edx
  movl   %edx,(%rsi)
  movl   0x4(%rdi),%edx
  bswap  %edx
  movl   %edx,0x4(%rsi)
  movl   0x8(%rdi),%edx
  bswap  %edx
  movl   %edx,0x8(%rsi)
  movl   0xc(%rdi),%edx
  bswap  %edx
  movl   %edx,0xc(%rsi)
  movl   0x10(%rdi),%edx
  bswap  %edx
  movl   %edx,0x10(%rsi)
  retq   
  nop
  .size sha1_read_ctx, .-sha1_read_ctx

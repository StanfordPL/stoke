  .text
  .globl md5_read_ctx
  .type md5_read_ctx, @function
md5_read_ctx:
  movl   (%rdi),%edx
  movq   %rsi,%rax
  movl   %edx,(%rsi)
  movl   0x4(%rdi),%edx
  movl   %edx,0x4(%rsi)
  movl   0x8(%rdi),%edx
  movl   %edx,0x8(%rsi)
  movl   0xc(%rdi),%edx
  movl   %edx,0xc(%rsi)
  retq   
  nop
  .size md5_read_ctx, .-md5_read_ctx

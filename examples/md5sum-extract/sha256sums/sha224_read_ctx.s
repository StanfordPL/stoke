  .text
  .globl sha224_read_ctx
  .type sha224_read_ctx, @function
sha224_read_ctx:
  movq   %rsi,%rax
  xorl   %edx,%edx
  nop
.L_402c38:
  movl   (%rdi,%rdx,1),%ecx
  bswap  %ecx
  movl   %ecx,(%rax,%rdx,1)
  addq   $0x4,%rdx
  cmpq   $0x1c,%rdx
  jne    .L_402c38
  retq
  nop
  .size sha224_read_ctx, .-sha224_read_ctx

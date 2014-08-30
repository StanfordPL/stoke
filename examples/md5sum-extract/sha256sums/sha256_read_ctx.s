  .text
  .globl sha256_read_ctx
  .type sha256_read_ctx, @function
sha256_read_ctx:
  movq   %rsi,%rax
  xorl   %edx,%edx
  nop
.L_402c18:
  movl   (%rdi,%rdx,1),%ecx
  bswap  %ecx
  movl   %ecx,(%rax,%rdx,1)
  addq   $0x4,%rdx
  cmpq   $0x20,%rdx
  jne    .L_402c18
  retq
  nop
  .size sha256_read_ctx, .-sha256_read_ctx

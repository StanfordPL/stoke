  .text
  .globl sha256_buffer
  .type sha256_buffer, @function
sha256_buffer:
  pushq  %rbx
  movq   %rdx,%rbx
  subq   $0xb0,%rsp
  movq   %rsp,%rdx
  movl   $0x6a09e667,(%rsp)
  movl   $0xbb67ae85,0x4(%rsp)
  movl   $0x3c6ef372,0x8(%rsp)
  movl   $0xa54ff53a,0xc(%rsp)
  movl   $0x510e527f,0x10(%rsp)
  movl   $0x9b05688c,0x14(%rsp)
  movl   $0x1f83d9ab,0x18(%rsp)
  movl   $0x5be0cd19,0x1c(%rsp)
  movl   $0x0,0x24(%rsp)
  movl   $0x0,0x20(%rsp)
  movq   $0x0,0x28(%rsp)
  callq  .L_405590
  movq   %rsp,%rdi
  callq  .L_405460
  movq   %rbx,%rsi
  movq   %rsp,%rdi
  callq  .L_402c10
  addq   $0xb0,%rsp
  popq   %rbx
  retq   
  nop
  .size sha256_buffer, .-sha256_buffer

  .text
  .globl sha224_buffer
  .type sha224_buffer, @function
sha224_buffer:
  pushq  %rbx
  movq   %rdx,%rbx
  subq   $0xb0,%rsp
  movq   %rsp,%rdx
  movl   $0xc1059ed8,(%rsp)
  movl   $0x367cd507,0x4(%rsp)
  movl   $0x3070dd17,0x8(%rsp)
  movl   $0xf70e5939,0xc(%rsp)
  movl   $0xffc00b31,0x10(%rsp)
  movl   $0x68581511,0x14(%rsp)
  movl   $0x64f98fa7,0x18(%rsp)
  movl   $0xbefa4fa4,0x1c(%rsp)
  movl   $0x0,0x24(%rsp)
  movl   $0x0,0x20(%rsp)
  movq   $0x0,0x28(%rsp)
  callq  .L_405590
  movq   %rsp,%rdi
  callq  .L_405460
  movq   %rbx,%rsi
  movq   %rsp,%rdi
  callq  .L_402c30
  addq   $0xb0,%rsp
  popq   %rbx
  retq   
  nop
  .size sha224_buffer, .-sha224_buffer

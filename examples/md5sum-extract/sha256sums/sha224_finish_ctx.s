  .text
  .globl sha224_finish_ctx
  .type sha224_finish_ctx, @function
sha224_finish_ctx:
  pushq  %rbp
  movq   %rsi,%rbp
  pushq  %rbx
  movq   %rdi,%rbx
  subq   $0x8,%rsp
  callq  .L_405460
  addq   $0x8,%rsp
  movq   %rbx,%rdi
  movq   %rbp,%rsi
  popq   %rbx
  popq   %rbp
  jmpq   .L_402c30
  nop
  .size sha224_finish_ctx, .-sha224_finish_ctx

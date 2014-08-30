  .text
  .globl xmemdup
  .type xmemdup, @function
xmemdup:
  pushq  %rbp
  movq   %rdi,%rbp
  movq   %rsi,%rdi
  pushq  %rbx
  movq   %rsi,%rbx
  subq   $0x8,%rsp
  callq  .L_4054c0
  addq   $0x8,%rsp
  movq   %rbx,%rdx
  movq   %rbp,%rsi
  popq   %rbx
  popq   %rbp
  movq   %rax,%rdi
  jmpq   .L_401610
  nop
  .size xmemdup, .-xmemdup

  .text
  .globl xstrdup
  .type xstrdup, @function
xstrdup:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4014e0
  movq   %rbx,%rdi
  leaq   0x1(%rax),%rsi
  popq   %rbx
  jmpq   .L_407980
  nop
  .size xstrdup, .-xstrdup

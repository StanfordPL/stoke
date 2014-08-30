  .text
  .globl xrealloc
  .type xrealloc, @function
xrealloc:
  testq  %rsi,%rsi
  pushq  %rbx
  movq   %rsi,%rbx
  je     .L_4060a0
.L_406089:
  movq   %rbx,%rsi
  callq  .L_401690
  testq  %rax,%rax
  je     .L_4060ae
.L_406096:
  popq   %rbx
  retq   
  nop
.L_4060a0:
  testq  %rdi,%rdi
  je     .L_406089
  callq  .L_401400
  xorl   %eax,%eax
  popq   %rbx
  retq   
.L_4060ae:
  testq  %rbx,%rbx
  je     .L_406096
  callq  .L_406240
  nop
  .size xrealloc, .-xrealloc

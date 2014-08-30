  .text
  .globl xrealloc
  .type xrealloc, @function
xrealloc:
  testq  %rsi,%rsi
  pushq  %rbx
  movq   %rsi,%rbx
  je     .L_407830
.L_407819:
  movq   %rbx,%rsi
  callq  .L_401690
  testq  %rax,%rax
  je     .L_40783e
.L_407826:
  popq   %rbx
  retq   
  nop
.L_407830:
  testq  %rdi,%rdi
  je     .L_407819
  callq  .L_401400
  xorl   %eax,%eax
  popq   %rbx
  retq   
.L_40783e:
  testq  %rbx,%rbx
  je     .L_407826
  callq  .L_4079d0
  nop
  .size xrealloc, .-xrealloc

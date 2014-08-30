  .text
  .globl xrealloc
  .type xrealloc, @function
xrealloc:
  testq  %rsi,%rsi
  pushq  %rbx
  movq   %rsi,%rbx
  je     .L_405530
.L_405519:
  movq   %rbx,%rsi
  callq  .L_401690
  testq  %rax,%rax
  je     .L_40553e
.L_405526:
  popq   %rbx
  retq   
  nop
.L_405530:
  testq  %rdi,%rdi
  je     .L_405519
  callq  .L_401400
  xorl   %eax,%eax
  popq   %rbx
  retq   
.L_40553e:
  testq  %rbx,%rbx
  je     .L_405526
  callq  .L_4056d0
  nop
  .size xrealloc, .-xrealloc

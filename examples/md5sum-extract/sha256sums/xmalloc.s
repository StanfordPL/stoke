  .text
  .globl xmalloc
  .type xmalloc, @function
xmalloc:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401630
  testq  %rax,%rax
  je     .L_4077d0
.L_4077ce:
  popq   %rbx
  retq   
.L_4077d0:
  testq  %rbx,%rbx
  je     .L_4077ce
  callq  .L_4079d0
  nop
  .size xmalloc, .-xmalloc

  .text
  .globl xmalloc
  .type xmalloc, @function
xmalloc:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401630
  testq  %rax,%rax
  je     .L_406040
.L_40603e:
  popq   %rbx
  retq   
.L_406040:
  testq  %rbx,%rbx
  je     .L_40603e
  callq  .L_406240
  nop
  .size xmalloc, .-xmalloc

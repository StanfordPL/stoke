  .text
  .globl xmalloc
  .type xmalloc, @function
xmalloc:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401630
  testq  %rax,%rax
  je     .L_4054d0
.L_4054ce:
  popq   %rbx
  retq   
.L_4054d0:
  testq  %rbx,%rbx
  je     .L_4054ce
  callq  .L_4056d0
  nop
  .size xmalloc, .-xmalloc

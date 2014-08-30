  .text
  .globl xzalloc
  .type xzalloc, @function
xzalloc:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4054c0
  movq   %rbx,%rdx
  xorl   %esi,%esi
  movq   %rax,%rdi
  popq   %rbx
  jmpq   .L_401560
  nop
  .size xzalloc, .-xzalloc

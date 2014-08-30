  .text
  .globl xnmalloc
  .type xnmalloc, @function
xnmalloc:
  xorl   %edx,%edx
  movq   $0xffffffffffffffff,%rax
  divq   %rsi
  cmpq   %rdi,%rax
  jb     .L_4077fa
  imulq  %rsi,%rdi
  jmpq   .L_4077c0
.L_4077fa:
  pushq  %rax
  callq  .L_4079d0
  .size xnmalloc, .-xnmalloc

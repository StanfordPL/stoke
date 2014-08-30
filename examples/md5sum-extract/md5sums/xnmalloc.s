  .text
  .globl xnmalloc
  .type xnmalloc, @function
xnmalloc:
  xorl   %edx,%edx
  movq   $0xffffffffffffffff,%rax
  divq   %rsi
  cmpq   %rdi,%rax
  jb     .L_4054fa
  imulq  %rsi,%rdi
  jmpq   .L_4054c0
.L_4054fa:
  pushq  %rax
  callq  .L_4056d0
  .size xnmalloc, .-xnmalloc

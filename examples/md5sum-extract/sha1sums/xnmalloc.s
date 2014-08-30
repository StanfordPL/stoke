  .text
  .globl xnmalloc
  .type xnmalloc, @function
xnmalloc:
  xorl   %edx,%edx
  movq   $0xffffffffffffffff,%rax
  divq   %rsi
  cmpq   %rdi,%rax
  jb     .L_40606a
  imulq  %rsi,%rdi
  jmpq   .L_406030
.L_40606a:
  pushq  %rax
  callq  .L_406240
  .size xnmalloc, .-xnmalloc

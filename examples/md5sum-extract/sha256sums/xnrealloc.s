  .text
  .globl xnrealloc
  .type xnrealloc, @function
xnrealloc:
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%rax
  xorl   %edx,%edx
  divq   %rcx
  cmpq   %rsi,%rax
  jb     .L_40786d
  imulq  %rcx,%rsi
  jmpq   .L_407810
.L_40786d:
  pushq  %rax
  callq  .L_4079d0
  nop
  .size xnrealloc, .-xnrealloc

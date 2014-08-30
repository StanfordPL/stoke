  .text
  .globl xnrealloc
  .type xnrealloc, @function
xnrealloc:
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%rax
  xorl   %edx,%edx
  divq   %rcx
  cmpq   %rsi,%rax
  jb     .L_40556d
  imulq  %rcx,%rsi
  jmpq   .L_405510
.L_40556d:
  pushq  %rax
  callq  .L_4056d0
  nop
  .size xnrealloc, .-xnrealloc

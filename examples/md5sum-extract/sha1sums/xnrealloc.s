  .text
  .globl xnrealloc
  .type xnrealloc, @function
xnrealloc:
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%rax
  xorl   %edx,%edx
  divq   %rcx
  cmpq   %rsi,%rax
  jb     .L_4060dd
  imulq  %rcx,%rsi
  jmpq   .L_406080
.L_4060dd:
  pushq  %rax
  callq  .L_406240
  nop
  .size xnrealloc, .-xnrealloc

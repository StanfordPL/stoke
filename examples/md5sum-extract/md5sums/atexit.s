  .text
  .globl atexit
  .type atexit, @function
atexit:
  leaq   0x203351(%rip),%rax        
  testq  %rax,%rax
  je     .L_405ec6
  movq   (%rax),%rdx
.L_405ebf:
  xorl   %esi,%esi
  jmpq   .L_401730
.L_405ec6:
  xorl   %edx,%edx
  jmpq    .L_405ebf
  .size atexit, .-atexit

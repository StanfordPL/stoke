  .text
  .globl atexit
  .type atexit, @function
atexit:
  leaq   0x2037e1(%rip),%rax        
  testq  %rax,%rax
  je     .L_406a36
  movq   (%rax),%rdx
.L_406a2f:
  xorl   %esi,%esi
  jmpq   .L_401730
.L_406a36:
  xorl   %edx,%edx
  jmpq    .L_406a2f
  .size atexit, .-atexit

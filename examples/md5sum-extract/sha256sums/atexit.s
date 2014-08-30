  .text
  .globl atexit
  .type atexit, @function
atexit:
  leaq   0x203051(%rip),%rax        
  testq  %rax,%rax
  je     .L_4081c6
  movq   (%rax),%rdx
.L_4081bf:
  xorl   %esi,%esi
  jmpq   .L_401730
.L_4081c6:
  xorl   %edx,%edx
  jmpq    .L_4081bf
  .size atexit, .-atexit

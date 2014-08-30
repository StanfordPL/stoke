  .text
  .globl base_len
  .type base_len, @function
base_len:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4014e0
  cmpq   $0x1,%rax
  jbe    .L_40438a
.L_40437f:
  cmpb   $0x2f,-0x1(%rbx,%rax,1)
  leaq   -0x1(%rax),%rdx
  je     .L_404390
.L_40438a:
  popq   %rbx
  retq   
  nop
.L_404390:
  cmpq   $0x1,%rdx
  movq   %rdx,%rax
  jne    .L_40437f
  popq   %rbx
  retq   
  nop
  .size base_len, .-base_len

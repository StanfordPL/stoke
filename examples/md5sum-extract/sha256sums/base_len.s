  .text
  .globl base_len
  .type base_len, @function
base_len:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4014e0
  cmpq   $0x1,%rax
  jbe    .L_405b1a
.L_405b0f:
  cmpb   $0x2f,-0x1(%rbx,%rax,1)
  leaq   -0x1(%rax),%rdx
  je     .L_405b20
.L_405b1a:
  popq   %rbx
  retq   
  nop
.L_405b20:
  cmpq   $0x1,%rdx
  movq   %rdx,%rax
  jne    .L_405b0f
  popq   %rbx
  retq   
  nop
  .size base_len, .-base_len

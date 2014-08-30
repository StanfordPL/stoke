  .text
  .globl x2realloc
  .type x2realloc, @function
x2realloc:
  testq  %rdi,%rdi
  movq   (%rsi),%rax
  je     .L_407920
  movq $0xaaaaaaaaaaaaaaa9,%rdx
  cmpq   %rdx,%rax
  ja     .L_407937
  leaq   0x1(%rax),%rdx
  shrq $0x1,  %rdx
  addq   %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_407810
  nop
.L_407920:
  testq  %rax,%rax
  movl   $0x80,%edx
  cmoveq %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_407810
.L_407937:
  pushq  %rax
  callq  .L_4079d0
  nop
  .size x2realloc, .-x2realloc

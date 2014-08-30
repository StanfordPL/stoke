  .text
  .globl x2realloc
  .type x2realloc, @function
x2realloc:
  testq  %rdi,%rdi
  movq   (%rsi),%rax
  je     .L_406190
  movq $0xaaaaaaaaaaaaaaa9,%rdx
  cmpq   %rdx,%rax
  ja     .L_4061a7
  leaq   0x1(%rax),%rdx
  shrq $0x1,  %rdx
  addq   %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_406080
  nop
.L_406190:
  testq  %rax,%rax
  movl   $0x80,%edx
  cmoveq %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_406080
.L_4061a7:
  pushq  %rax
  callq  .L_406240
  nop
  .size x2realloc, .-x2realloc

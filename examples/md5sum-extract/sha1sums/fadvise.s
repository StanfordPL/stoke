  .text
  .globl fadvise
  .type fadvise, @function
fadvise:
  testq  %rdi,%rdi
  je     .L_4043d0
  pushq  %rbx
  movl   %esi,%ebx
  callq  .L_401620
  movl   %ebx,%ecx
  xorl   %edx,%edx
  xorl   %esi,%esi
  popq   %rbx
  movl   %eax,%edi
  jmpq   .L_401590
  nop
.L_4043d0:
  retq
  nop
  nop
  .size fadvise, .-fadvise

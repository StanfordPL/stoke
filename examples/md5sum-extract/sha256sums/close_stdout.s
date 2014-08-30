  .text
  .globl close_stdout
  .type close_stdout, @function
close_stdout:
  pushq  %rbp
  pushq  %rbx
  subq   $0x8,%rsp
  movq   0x2087e3(%rip),%rdi        
  callq  .L_407c80
  testl  %eax,%eax
  je     .L_402ae9
  cmpb   $0x0,0x208823(%rip)        
  je     .L_402b00
  callq  .L_401420
  cmpl   $0x20,(%rax)
  jne    .L_402b00
.L_402ae9:
  movq   0x2087e0(%rip),%rdi        
  callq  .L_407c80
  testl  %eax,%eax
  jne    .L_402b43
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  retq   
.L_402b00:
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x408d85,%esi
  callq  .L_4014c0
  movq   0x2087f0(%rip),%rdi        
  movq   %rax,%rbx
  testq  %rdi,%rdi
  je     .L_402b4e
  callq  .L_407020
  movq   %rax,%rbp
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbx,%r8
  movq   %rbp,%rcx
  movl   $0x408d91,%edx
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
.L_402b43:
  movl   0x2086d7(%rip),%edi        
  callq  .L_401440
.L_402b4e:
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbx,%rcx
  movl   $0x408d95,%edx
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq    .L_402b43
  nop
  .size close_stdout, .-close_stdout

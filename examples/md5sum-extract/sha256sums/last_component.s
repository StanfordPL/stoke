  .text
  .globl last_component
  .type last_component, @function
last_component:
  movzbl (%rdi),%edx
  movq   %rdi,%rax
  cmpb   $0x2f,%dl
  jne    .L_405aac
  nop
.L_405aa0:
  addq   $0x1,%rax
  movzbl (%rax),%edx
  cmpb   $0x2f,%dl
  je     .L_405aa0
.L_405aac:
  movl   %edx,%ecx
  xorl   %esi,%esi
  movq   %rax,%rdx
  testb  %cl,%cl
  je     .L_405af7
  nop
.L_405ac0:
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  testb  %cl,%cl
  je     .L_405ae5
.L_405acb:
  cmpb   $0x2f,%cl
  je     .L_405af0
  testb  %sil,%sil
  je     .L_405ac0
  movq   %rdx,%rax
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  xorl   %esi,%esi
  testb  %cl,%cl
  jne    .L_405acb
.L_405ae5:
  retq
  nop
.L_405af0:
  movl   $0x1,%esi
  jmpq    .L_405ac0
.L_405af7:
  retq
  nop
  .size last_component, .-last_component

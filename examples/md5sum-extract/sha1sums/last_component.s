  .text
  .globl last_component
  .type last_component, @function
last_component:
  movzbl (%rdi),%edx
  movq   %rdi,%rax
  cmpb   $0x2f,%dl
  jne    .L_40431c
  nop
.L_404310:
  addq   $0x1,%rax
  movzbl (%rax),%edx
  cmpb   $0x2f,%dl
  je     .L_404310
.L_40431c:
  movl   %edx,%ecx
  xorl   %esi,%esi
  movq   %rax,%rdx
  testb  %cl,%cl
  je     .L_404367
  nop
.L_404330:
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  testb  %cl,%cl
  je     .L_404355
.L_40433b:
  cmpb   $0x2f,%cl
  je     .L_404360
  testb  %sil,%sil
  je     .L_404330
  movq   %rdx,%rax
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  xorl   %esi,%esi
  testb  %cl,%cl
  jne    .L_40433b
.L_404355:
  retq
  nop
.L_404360:
  movl   $0x1,%esi
  jmpq    .L_404330
.L_404367:
  retq
  nop
  .size last_component, .-last_component

  .text
  .globl last_component
  .type last_component, @function
last_component:
  movzbl (%rdi),%edx
  movq   %rdi,%rax
  cmpb   $0x2f,%dl
  jne    .L_4037ac
  nop
.L_4037a0:
  addq   $0x1,%rax
  movzbl (%rax),%edx
  cmpb   $0x2f,%dl
  je     .L_4037a0
.L_4037ac:
  movl   %edx,%ecx
  xorl   %esi,%esi
  movq   %rax,%rdx
  testb  %cl,%cl
  je     .L_4037f7
  nop
.L_4037c0:
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  testb  %cl,%cl
  je     .L_4037e5
.L_4037cb:
  cmpb   $0x2f,%cl
  je     .L_4037f0
  testb  %sil,%sil
  je     .L_4037c0
  movq   %rdx,%rax
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  xorl   %esi,%esi
  testb  %cl,%cl
  jne    .L_4037cb
.L_4037e5:
  retq
  nop
.L_4037f0:
  movl   $0x1,%esi
  jmpq    .L_4037c0
.L_4037f7:
  retq
  nop
  .size last_component, .-last_component

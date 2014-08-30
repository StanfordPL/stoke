  .text
  .globl set_program_name
  .type set_program_name, @function
set_program_name:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_4044f3
  movl   $0x2f,%esi
  callq  .L_401540
  testq  %rax,%rax
  je     .L_4044e3
  leaq   0x1(%rax),%rdx
  movq   %rdx,%rcx
  subq   %rbx,%rcx
  cmpq   $0x6,%rcx
  jle    .L_4044e3
  leaq   -0x6(%rax),%rsi
  movl   $0x407698,%edi
  movl   $0x7,%ecx
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  jne    .L_4044e3
  movl   $0x3,%ecx
  movq   %rdx,%rsi
  movl   $0x4076a0,%edi
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  movq   %rdx,%rbx
  seta   %sil
  setb   %cl
  cmpb   %cl,%sil
  jne    .L_4044e3
  leaq   0x4(%rax),%rbx
  movq   %rbx,0x205dbd(%rip)        
.L_4044e3:
  movq   %rbx,0x205e26(%rip)        
  movq   %rbx,0x205dd7(%rip)        
  popq   %rbx
  retq   
.L_4044f3:
  movq   0x205dd6(%rip),%rcx        
  movl   $0x37,%edx
  movl   $0x1,%esi
  movl   $0x407660,%edi
  callq  .L_401750
  callq  .L_401410
  nop
  nop
  .size set_program_name, .-set_program_name

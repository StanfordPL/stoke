  .text
  .globl set_program_name
  .type set_program_name, @function
set_program_name:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_403983
  movl   $0x2f,%esi
  callq  .L_401540
  testq  %rax,%rax
  je     .L_403973
  leaq   0x1(%rax),%rdx
  movq   %rdx,%rcx
  subq   %rbx,%rcx
  cmpq   $0x6,%rcx
  jle    .L_403973
  leaq   -0x6(%rax),%rsi
  movl   $0x406b18,%edi
  movl   $0x7,%ecx
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  jne    .L_403973
  movl   $0x3,%ecx
  movq   %rdx,%rsi
  movl   $0x406b20,%edi
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  movq   %rdx,%rbx
  seta   %sil
  setb   %cl
  cmpb   %cl,%sil
  jne    .L_403973
  leaq   0x4(%rax),%rbx
  movq   %rbx,0x20592d(%rip)        
.L_403973:
  movq   %rbx,0x205996(%rip)        
  movq   %rbx,0x205947(%rip)        
  popq   %rbx
  retq   
.L_403983:
  movq   0x205946(%rip),%rcx        
  movl   $0x37,%edx
  movl   $0x1,%esi
  movl   $0x406ae0,%edi
  callq  .L_401750
  callq  .L_401410
  nop
  nop
  .size set_program_name, .-set_program_name

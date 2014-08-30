  .text
  .globl emit_bug_reporting_address
  .type emit_bug_reporting_address, @function
emit_bug_reporting_address:
  pushq  %rbx
  movl   $0x5,%edx
  movl   $0x409382,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x408213,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movl   $0x5,%edx
  movl   $0x408229,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x4087c8,%ecx
  movq   %rax,%rsi
  movl   $0x40823d,%edx
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x203b19(%rip),%rbx        
  movl   $0x4087f0,%esi
  xorl   %edi,%edi
  movl   $0x5,%edx
  callq  .L_4014c0
  movq   %rbx,%rsi
  movq   %rax,%rdi
  popq   %rbx
  jmpq   .L_4015c0
  nop
  xchgw  %ax,%ax
  .size emit_bug_reporting_address, .-emit_bug_reporting_address

  .text
  .globl emit_bug_reporting_address
  .type emit_bug_reporting_address, @function
emit_bug_reporting_address:
  pushq  %rbx
  movl   $0x5,%edx
  movl   $0x407082,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x405f0e,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movl   $0x5,%edx
  movl   $0x405f24,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x4064c0,%ecx
  movq   %rax,%rsi
  movl   $0x405f38,%edx
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x203e19(%rip),%rbx        
  movl   $0x4064e8,%esi
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

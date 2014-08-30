  .text
  .globl set_char_quoting
  .type set_char_quoting, @function
set_char_quoting:
  testq  %rdi,%rdi
  movl   $0x60b420,%eax
  movl   %esi,%ecx
  cmovneq %rdi,%rax
  shrb   $0x5,%sil
  andl   $0x1f,%ecx
  movzbl %sil,%esi
  leaq   (%rax,%rsi,4),%rsi
  movl   0x8(%rsi),%edi
  movl   %edi,%eax
  shrl   %cl,%eax
  xorl   %eax,%edx
  andl   $0x1,%eax
  andl   $0x1,%edx
  shll   %cl,%edx
  xorl   %edi,%edx
  movl   %edx,0x8(%rsi)
  retq   
  nop
  .size set_char_quoting, .-set_char_quoting

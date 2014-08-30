  .text
  .globl dup_safer
  .type dup_safer, @function
dup_safer:
  movl   $0x3,%edx
  xorl   %esi,%esi
  xorl   %eax,%eax
  jmpq   .L_406300
  xchgw  %ax,%ax
  .size dup_safer, .-dup_safer

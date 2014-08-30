  .text
  .globl __stack_chk_fail@plt
  .type __stack_chk_fail@plt, @function
__stack_chk_fail@plt:
  jmpq   *0x208baa(%rip)        
  pushq  $0x11
  jmpq   .L_4013d0
  .size __stack_chk_fail@plt, .-__stack_chk_fail@plt

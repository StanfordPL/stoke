  .text
  .globl open@plt
  .type open@plt, @function
open@plt:
  jmpq   *0x208aaa(%rip)        
  pushq  $0x31
  jmpq   .L_4013d0
  .size open@plt, .-open@plt

  .text
  .globl __overflow@plt
  .type __overflow@plt, @function
__overflow@plt:
  jmpq   *0x207b8a(%rip)        
  pushq  $0x15
  jmpq   .L_4013d0
  .size __overflow@plt, .-__overflow@plt

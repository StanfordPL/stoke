  .text
  .globl __fpending@plt
  .type __fpending@plt, @function
__fpending@plt:
  jmpq   *0x209bf2(%rip)        
  pushq  $0x8
  jmpq   .L_4013d0
  .size __fpending@plt, .-__fpending@plt

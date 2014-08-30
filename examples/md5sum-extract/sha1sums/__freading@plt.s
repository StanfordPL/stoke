  .text
  .globl __freading@plt
  .type __freading@plt, @function
__freading@plt:
  jmpq   *0x208aea(%rip)        
  pushq  $0x29
  jmpq   .L_4013d0
  .size __freading@plt, .-__freading@plt

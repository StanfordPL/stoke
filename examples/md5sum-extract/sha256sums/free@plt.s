  .text
  .globl free@plt
  .type free@plt, @function
free@plt:
  jmpq   *0x209c22(%rip)        
  pushq  $0x2
  jmpq   .L_4013d0
  .size free@plt, .-free@plt

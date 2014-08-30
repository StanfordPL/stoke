  .text
  .globl close@plt
  .type close@plt, @function
close@plt:
  jmpq   *0x209b62(%rip)        
  pushq  $0x1a
  jmpq   .L_4013d0
  .size close@plt, .-close@plt

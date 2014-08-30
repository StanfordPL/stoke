  .text
  .globl fileno@plt
  .type fileno@plt, @function
fileno@plt:
  jmpq   *0x209b12(%rip)        
  pushq  $0x24
  jmpq   .L_4013d0
  .size fileno@plt, .-fileno@plt

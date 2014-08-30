  .text
  .globl error@plt
  .type error@plt, @function
error@plt:
  jmpq   *0x209ab2(%rip)        
  pushq  $0x30
  jmpq   .L_4013d0
  .size error@plt, .-error@plt

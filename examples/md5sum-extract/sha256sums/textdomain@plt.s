  .text
  .globl textdomain@plt
  .type textdomain@plt, @function
textdomain@plt:
  jmpq   *0x209bda(%rip)        
  pushq  $0xb
  jmpq   .L_4013d0
  .size textdomain@plt, .-textdomain@plt

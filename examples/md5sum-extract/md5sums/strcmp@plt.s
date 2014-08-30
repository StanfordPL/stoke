  .text
  .globl strcmp@plt
  .type strcmp@plt, @function
strcmp@plt:
  jmpq   *0x207b2a(%rip)        
  pushq  $0x21
  jmpq   .L_4013d0
  .size strcmp@plt, .-strcmp@plt

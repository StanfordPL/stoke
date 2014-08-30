  .text
  .globl abort@plt
  .type abort@plt, @function
abort@plt:
  jmpq   *0x208c1a(%rip)        
  pushq  $0x3
  jmpq   .L_4013d0
  .size abort@plt, .-abort@plt

  .text
  .globl setlocale@plt
  .type setlocale@plt, @function
setlocale@plt:
  jmpq   *0x209aca(%rip)        
  pushq  $0x2d
  jmpq   .L_4013d0
  .size setlocale@plt, .-setlocale@plt

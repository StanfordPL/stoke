  .text
  .globl setvbuf@plt
  .type setvbuf@plt, @function
setvbuf@plt:
  jmpq   *0x209aba(%rip)        
  pushq  $0x2f
  jmpq   .L_4013d0
  .size setvbuf@plt, .-setvbuf@plt

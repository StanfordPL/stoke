  .text
  .globl malloc@plt
  .type malloc@plt, @function
malloc@plt:
  jmpq   *0x209b0a(%rip)        
  pushq  $0x25
  jmpq   .L_4013d0
  .size malloc@plt, .-malloc@plt

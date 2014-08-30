  .text
  .globl fputs_unlocked@plt
  .type fputs_unlocked@plt, @function
fputs_unlocked@plt:
  jmpq   *0x208b42(%rip)        
  pushq  $0x1e
  jmpq   .L_4013d0
  .size fputs_unlocked@plt, .-fputs_unlocked@plt

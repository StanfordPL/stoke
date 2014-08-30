  .text
  .globl fwrite_unlocked@plt
  .type fwrite_unlocked@plt, @function
fwrite_unlocked@plt:
  jmpq   *0x207ae2(%rip)        
  pushq  $0x2a
  jmpq   .L_4013d0
  .size fwrite_unlocked@plt, .-fwrite_unlocked@plt

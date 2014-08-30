  .text
  .globl fread_unlocked@plt
  .type fread_unlocked@plt, @function
fread_unlocked@plt:
  jmpq   *0x208be2(%rip)        
  pushq  $0xa
  jmpq   .L_4013d0
  .size fread_unlocked@plt, .-fread_unlocked@plt

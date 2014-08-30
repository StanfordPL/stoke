  .text
  .globl memcmp@plt
  .type memcmp@plt, @function
memcmp@plt:
  jmpq   *0x209b4a(%rip)        
  pushq  $0x1d
  jmpq   .L_4013d0
  .size memcmp@plt, .-memcmp@plt

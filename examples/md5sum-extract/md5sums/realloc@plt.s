  .text
  .globl realloc@plt
  .type realloc@plt, @function
realloc@plt:
  jmpq   *0x207ada(%rip)        
  pushq  $0x2b
  jmpq   .L_4013d0
  .size realloc@plt, .-realloc@plt

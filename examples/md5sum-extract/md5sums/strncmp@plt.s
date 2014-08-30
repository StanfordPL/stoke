  .text
  .globl strncmp@plt
  .type strncmp@plt, @function
strncmp@plt:
  jmpq   *0x207c0a(%rip)        
  pushq  $0x5
  jmpq   .L_4013d0
  .size strncmp@plt, .-strncmp@plt

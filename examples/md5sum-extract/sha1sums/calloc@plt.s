  .text
  .globl calloc@plt
  .type calloc@plt, @function
calloc@plt:
  jmpq   *0x208b3a(%rip)        
  pushq  $0x1f
  jmpq   .L_4013d0
  .size calloc@plt, .-calloc@plt

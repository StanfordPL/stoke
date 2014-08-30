  .text
  .globl getenv@plt
  .type getenv@plt, @function
getenv@plt:
  jmpq   *0x207c2a(%rip)        
  pushq  $0x1
  jmpq   .L_4013d0
  .size getenv@plt, .-getenv@plt

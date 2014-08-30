  .text
  .globl memset@plt
  .type memset@plt, @function
memset@plt:
  jmpq   *0x209b72(%rip)        
  pushq  $0x18
  jmpq   .L_4013d0
  .size memset@plt, .-memset@plt

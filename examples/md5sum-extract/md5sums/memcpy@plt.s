  .text
  .globl memcpy@plt
  .type memcpy@plt, @function
memcpy@plt:
  jmpq   *0x207b1a(%rip)        
  pushq  $0x23
  jmpq   .L_4013d0
  .size memcpy@plt, .-memcpy@plt

  .text
  .globl exit@plt
  .type exit@plt, @function
exit@plt:
  jmpq   *0x208a82(%rip)        
  pushq  $0x36
  jmpq   .L_4013d0
  .size exit@plt, .-exit@plt

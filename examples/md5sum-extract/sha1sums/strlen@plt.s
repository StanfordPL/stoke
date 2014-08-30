  .text
  .globl strlen@plt
  .type strlen@plt, @function
strlen@plt:
  jmpq   *0x208bb2(%rip)        
  pushq  $0x10
  jmpq   .L_4013d0
  .size strlen@plt, .-strlen@plt

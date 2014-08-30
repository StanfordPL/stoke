  .text
  .globl fflush@plt
  .type fflush@plt, @function
fflush@plt:
  jmpq   *0x207b02(%rip)        
  pushq  $0x26
  jmpq   .L_4013d0
  .size fflush@plt, .-fflush@plt

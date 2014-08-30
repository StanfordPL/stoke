  .text
  .globl fcntl@plt
  .type fcntl@plt, @function
fcntl@plt:
  jmpq   *0x207bea(%rip)        
  pushq  $0x9
  jmpq   .L_4013d0
  .size fcntl@plt, .-fcntl@plt

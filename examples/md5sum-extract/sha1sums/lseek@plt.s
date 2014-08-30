  .text
  .globl lseek@plt
  .type lseek@plt, @function
lseek@plt:
  jmpq   *0x208b7a(%rip)        
  pushq  $0x17
  jmpq   .L_4013d0
  .size lseek@plt, .-lseek@plt

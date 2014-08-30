  .text
  .globl strcpy@plt
  .type strcpy@plt, @function
strcpy@plt:
  jmpq   *0x208bfa(%rip)        
  pushq  $0x7
  jmpq   .L_4013d0
  .size strcpy@plt, .-strcpy@plt

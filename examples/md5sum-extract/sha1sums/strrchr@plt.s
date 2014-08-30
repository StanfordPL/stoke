  .text
  .globl strrchr@plt
  .type strrchr@plt, @function
strrchr@plt:
  jmpq   *0x208b82(%rip)        
  pushq  $0x16
  jmpq   .L_4013d0
  .size strrchr@plt, .-strrchr@plt

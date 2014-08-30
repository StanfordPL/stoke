  .text
  .globl fscanf@plt
  .type fscanf@plt, @function
fscanf@plt:
  jmpq   *0x209b6a(%rip)        
  pushq  $0x19
  jmpq   .L_4013d0
  .size fscanf@plt, .-fscanf@plt

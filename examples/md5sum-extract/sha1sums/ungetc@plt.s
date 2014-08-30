  .text
  .globl ungetc@plt
  .type ungetc@plt, @function
ungetc@plt:
  jmpq   *0x208af2(%rip)        
  pushq  $0x28
  jmpq   .L_4013d0
  .size ungetc@plt, .-ungetc@plt

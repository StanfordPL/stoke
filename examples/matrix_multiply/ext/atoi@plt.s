  .text
  .globl atoi@plt
  .type atoi@plt, @function
atoi@plt:
  jmpq   *0x200bf2(%rip)        
  pushq  $0x2
  jmpq   .L_400400
  .size atoi@plt, .-atoi@plt

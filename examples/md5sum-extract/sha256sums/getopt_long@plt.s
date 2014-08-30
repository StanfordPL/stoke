  .text
  .globl getopt_long@plt
  .type getopt_long@plt, @function
getopt_long@plt:
  jmpq   *0x209ba2(%rip)        
  pushq  $0x12
  jmpq   .L_4013d0
  .size getopt_long@plt, .-getopt_long@plt

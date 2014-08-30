  .text
  .globl bindtextdomain@plt
  .type bindtextdomain@plt, @function
bindtextdomain@plt:
  jmpq   *0x209bca(%rip)        
  pushq  $0xd
  jmpq   .L_4013d0
  .size bindtextdomain@plt, .-bindtextdomain@plt

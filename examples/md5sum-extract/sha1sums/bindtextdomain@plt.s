  .text
  .globl bindtextdomain@plt
  .type bindtextdomain@plt, @function
bindtextdomain@plt:
  jmpq   *0x208bca(%rip)        
  pushq  $0xd
  jmpq   .L_4013d0
  .size bindtextdomain@plt, .-bindtextdomain@plt

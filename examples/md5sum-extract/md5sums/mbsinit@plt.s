  .text
  .globl mbsinit@plt
  .type mbsinit@plt, @function
mbsinit@plt:
  jmpq   *0x207a6a(%rip)        
  pushq  $0x39
  jmpq   .L_4013d0
  .size mbsinit@plt, .-mbsinit@plt

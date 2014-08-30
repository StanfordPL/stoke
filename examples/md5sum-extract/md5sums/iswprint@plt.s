  .text
  .globl iswprint@plt
  .type iswprint@plt, @function
iswprint@plt:
  jmpq   *0x207a62(%rip)        
  pushq  $0x3a
  jmpq   .L_4013d0
  .size iswprint@plt, .-iswprint@plt

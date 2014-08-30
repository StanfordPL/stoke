  .text
  .globl fwrite@plt
  .type fwrite@plt, @function
fwrite@plt:
  jmpq   *0x208a7a(%rip)        
  pushq  $0x37
  jmpq   .L_4013d0
  .size fwrite@plt, .-fwrite@plt

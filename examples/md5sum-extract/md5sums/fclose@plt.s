  .text
  .globl fclose@plt
  .type fclose@plt, @function
fclose@plt:
  jmpq   *0x207bd2(%rip)        
  pushq  $0xc
  jmpq   .L_4013d0
  .size fclose@plt, .-fclose@plt

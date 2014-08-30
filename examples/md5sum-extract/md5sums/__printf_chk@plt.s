  .text
  .globl __printf_chk@plt
  .type __printf_chk@plt, @function
__printf_chk@plt:
  jmpq   *0x207ac2(%rip)        
  pushq  $0x2e
  jmpq   .L_4013d0
  .size __printf_chk@plt, .-__printf_chk@plt

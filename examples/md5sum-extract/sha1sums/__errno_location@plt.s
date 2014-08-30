  .text
  .globl __errno_location@plt
  .type __errno_location@plt, @function
__errno_location@plt:
  jmpq   *0x208c12(%rip)        
  pushq  $0x4
  jmpq   .L_4013d0
  .size __errno_location@plt, .-__errno_location@plt

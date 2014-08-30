  .text
  .globl _exit@plt
  .type _exit@plt, @function
_exit@plt:
  jmpq   *0x208c02(%rip)        
  pushq  $0x6
  jmpq   .L_4013d0
  .size _exit@plt, .-_exit@plt

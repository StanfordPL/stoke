  .text
  .globl __cxa_atexit@plt
  .type __cxa_atexit@plt, @function
__cxa_atexit@plt:
  jmpq   *0x200a6a(%rip)        
  pushq  $0x3
  jmpq   .L_400580
  .size __cxa_atexit@plt, .-__cxa_atexit@plt

  .text
  .globl __libc_start_main@plt
  .type __libc_start_main@plt, @function
__libc_start_main@plt:
  jmpq   *0x207b52(%rip)        
  pushq  $0x1c
  jmpq   .L_4013d0
  .size __libc_start_main@plt, .-__libc_start_main@plt

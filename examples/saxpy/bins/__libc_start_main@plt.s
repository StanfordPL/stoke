  .text
  .globl __libc_start_main@plt
  .type __libc_start_main@plt, @function
__libc_start_main@plt:
  jmpq   *0x200a72(%rip)        
  pushq  $0x2
  jmpq   .L_400580
  .size __libc_start_main@plt, .-__libc_start_main@plt

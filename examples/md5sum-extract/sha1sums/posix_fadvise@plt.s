  .text
  .globl posix_fadvise@plt
  .type posix_fadvise@plt, @function
posix_fadvise@plt:
  jmpq   *0x208b5a(%rip)        
  pushq  $0x1b
  jmpq   .L_4013d0
  .size posix_fadvise@plt, .-posix_fadvise@plt

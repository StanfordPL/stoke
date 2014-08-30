  .text
  .globl close_stdout_set_ignore_EPIPE
  .type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:
  movb   %dil,0x207849(%rip)        
  retq   
  nop
  .size close_stdout_set_ignore_EPIPE, .-close_stdout_set_ignore_EPIPE

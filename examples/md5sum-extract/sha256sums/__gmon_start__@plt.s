  .text
  .globl __gmon_start__@plt
  .type __gmon_start__@plt, @function
__gmon_start__@plt:
  jmpq   *0x209b22(%rip)        
  pushq  $0x22
  jmpq   .L_4013d0
  .size __gmon_start__@plt, .-__gmon_start__@plt

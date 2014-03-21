  .text
  .globl __gmon_start__@plt
  .type __gmon_start__@plt, @function
__gmon_start__@plt:
  jmpq   *0x200a82(%rip)        
  pushq  $0x0
  jmpq   .L_400580
  .size __gmon_start__@plt, .-__gmon_start__@plt

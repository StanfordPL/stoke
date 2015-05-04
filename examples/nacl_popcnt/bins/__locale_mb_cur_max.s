  .text
  .globl __locale_mb_cur_max
  .type __locale_mb_cur_max, @function

#! file-offset 0x7bac0
#! rip-offset  0x7bac0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.__locale_mb_cur_max:         #        0x7bac0  0      
  popq %r11                   #  1     0x7bac0  3      
  movl 0xffb4f57(%rip), %eax  #  2     0x7bac3  6      
  andl $0xffffffe0, %r11d     #  3     0x7bac9  7      
  addq %r15, %r11             #  4     0x7bad0  3      
  jmpq %r11                   #  5     0x7bad3  3      
  nop                         #  6     0x7bad6  1      
                                                       
.size __locale_mb_cur_max, .-__locale_mb_cur_max


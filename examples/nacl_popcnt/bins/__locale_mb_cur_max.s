  .text
  .globl __locale_mb_cur_max
  .type __locale_mb_cur_max, @function

#! file-offset 0x7ba40
#! rip-offset  0x7ba40
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.__locale_mb_cur_max:         #        0x7ba40  0      
  popq %r11                   #  1     0x7ba40  3      
  movl 0xffb4fd7(%rip), %eax  #  2     0x7ba43  6      
  andl $0xffffffe0, %r11d     #  3     0x7ba49  7      
  addq %r15, %r11             #  4     0x7ba50  3      
  jmpq %r11                   #  5     0x7ba53  3      
  nop                         #  6     0x7ba56  1      
                                                       
.size __locale_mb_cur_max, .-__locale_mb_cur_max


  .text
  .globl __locale_mb_cur_max
  .type __locale_mb_cur_max, @function

#! file-offset 0x7ba20
#! rip-offset  0x7ba20
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
.__locale_mb_cur_max:         #        0x7ba20  0      
  popq %r11                   #  1     0x7ba20  3      
  movl 0xffb4ff7(%rip), %eax  #  2     0x7ba23  6      
  andl $0xffffffe0, %r11d     #  3     0x7ba29  7      
  addq %r15, %r11             #  4     0x7ba30  3      
  jmpq %r11                   #  5     0x7ba33  3      
  nop                         #  6     0x7ba36  1      
                                                       
.size __locale_mb_cur_max, .-__locale_mb_cur_max


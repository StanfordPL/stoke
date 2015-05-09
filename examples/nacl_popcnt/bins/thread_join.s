  .text
  .globl thread_join
  .type thread_join, @function

#! file-offset 0x3fc00
#! rip-offset  0x3fc00
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  
.thread_join:         #        0x3fc00  0      
  xorl %esi, %esi     #  1     0x3fc00  2      
  jmpq .pthread_join  #  2     0x3fc02  5      
  nop                 #  3     0x3fc07  1      
  nop                 #  4     0x3fc08  1      
                                               
.size thread_join, .-thread_join


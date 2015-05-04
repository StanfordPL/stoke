  .text
  .globl thread_join
  .type thread_join, @function

#! file-offset 0x3fca0
#! rip-offset  0x3fca0
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  
.thread_join:         #        0x3fca0  0      
  xorl %esi, %esi     #  1     0x3fca0  2      
  jmpq .pthread_join  #  2     0x3fca2  5      
  nop                 #  3     0x3fca7  1      
  nop                 #  4     0x3fca8  1      
                                               
.size thread_join, .-thread_join


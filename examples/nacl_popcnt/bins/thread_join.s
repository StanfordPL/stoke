  .text
  .globl thread_join
  .type thread_join, @function

#! file-offset 0x3fc20
#! rip-offset  0x3fc20
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  
.thread_join:         #        0x3fc20  0      
  xorl %esi, %esi     #  1     0x3fc20  2      
  jmpq .pthread_join  #  2     0x3fc22  5      
  nop                 #  3     0x3fc27  1      
  nop                 #  4     0x3fc28  1      
                                               
.size thread_join, .-thread_join


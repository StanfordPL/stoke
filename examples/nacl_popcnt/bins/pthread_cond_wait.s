  .text
  .globl pthread_cond_wait
  .type pthread_cond_wait, @function

#! file-offset 0x41d60
#! rip-offset  0x41d60
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
.pthread_cond_wait:                 #        0x41d60  0      
  movl %edi, %edi                   #  1     0x41d60  2      
  movl %esi, %esi                   #  2     0x41d62  2      
  xorl %edx, %edx                   #  3     0x41d64  2      
  jmpq .pthread_cond_timedwait_abs  #  4     0x41d66  5      
  nop                               #  5     0x41d6b  1      
  nop                               #  6     0x41d6c  1      
                                                             
.size pthread_cond_wait, .-pthread_cond_wait


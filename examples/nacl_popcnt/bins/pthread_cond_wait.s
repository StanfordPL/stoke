  .text
  .globl pthread_cond_wait
  .type pthread_cond_wait, @function

#! file-offset 0x41de0
#! rip-offset  0x41de0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
.pthread_cond_wait:                 #        0x41de0  0      
  movl %edi, %edi                   #  1     0x41de0  2      
  movl %esi, %esi                   #  2     0x41de2  2      
  xorl %edx, %edx                   #  3     0x41de4  2      
  jmpq .pthread_cond_timedwait_abs  #  4     0x41de6  5      
  nop                               #  5     0x41deb  1      
  nop                               #  6     0x41dec  1      
                                                             
.size pthread_cond_wait, .-pthread_cond_wait


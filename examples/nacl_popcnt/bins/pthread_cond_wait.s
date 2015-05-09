  .text
  .globl pthread_cond_wait
  .type pthread_cond_wait, @function

#! file-offset 0x41d40
#! rip-offset  0x41d40
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  
.pthread_cond_wait:                 #        0x41d40  0      
  movl %edi, %edi                   #  1     0x41d40  2      
  movl %esi, %esi                   #  2     0x41d42  2      
  xorl %edx, %edx                   #  3     0x41d44  2      
  jmpq .pthread_cond_timedwait_abs  #  4     0x41d46  5      
  nop                               #  5     0x41d4b  1      
  nop                               #  6     0x41d4c  1      
                                                             
.size pthread_cond_wait, .-pthread_cond_wait


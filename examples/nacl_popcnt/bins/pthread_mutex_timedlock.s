  .text
  .globl pthread_mutex_timedlock
  .type pthread_mutex_timedlock, @function

#! file-offset 0x42900
#! rip-offset  0x42900
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_mutex_timedlock:  #        0x42900  0      
  movl %esi, %edx          #  1     0x42900  2      
  movl %edi, %edi          #  2     0x42902  2      
  xorl %esi, %esi          #  3     0x42904  2      
  jmpq .mutex_lock         #  4     0x42906  5      
  nop                      #  5     0x4290b  1      
  nop                      #  6     0x4290c  1      
                                                    
.size pthread_mutex_timedlock, .-pthread_mutex_timedlock


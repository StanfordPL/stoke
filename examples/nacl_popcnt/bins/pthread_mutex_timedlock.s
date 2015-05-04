  .text
  .globl pthread_mutex_timedlock
  .type pthread_mutex_timedlock, @function

#! file-offset 0x429a0
#! rip-offset  0x429a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_mutex_timedlock:  #        0x429a0  0      
  movl %esi, %edx          #  1     0x429a0  2      
  movl %edi, %edi          #  2     0x429a2  2      
  xorl %esi, %esi          #  3     0x429a4  2      
  jmpq .mutex_lock         #  4     0x429a6  5      
  nop                      #  5     0x429ab  1      
  nop                      #  6     0x429ac  1      
                                                    
.size pthread_mutex_timedlock, .-pthread_mutex_timedlock


  .text
  .globl pthread_mutex_lock
  .type pthread_mutex_lock, @function

#! file-offset 0x42920
#! rip-offset  0x42920
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  
.pthread_mutex_lock:  #        0x42920  0      
  movl %edi, %edi     #  1     0x42920  2      
  xorl %edx, %edx     #  2     0x42922  2      
  xorl %esi, %esi     #  3     0x42924  2      
  jmpq .mutex_lock    #  4     0x42926  5      
  nop                 #  5     0x4292b  1      
  nop                 #  6     0x4292c  1      
                                               
.size pthread_mutex_lock, .-pthread_mutex_lock


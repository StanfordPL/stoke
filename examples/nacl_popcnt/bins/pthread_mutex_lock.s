  .text
  .globl pthread_mutex_lock
  .type pthread_mutex_lock, @function

#! file-offset 0x42940
#! rip-offset  0x42940
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  
.pthread_mutex_lock:  #        0x42940  0      
  movl %edi, %edi     #  1     0x42940  2      
  xorl %edx, %edx     #  2     0x42942  2      
  xorl %esi, %esi     #  3     0x42944  2      
  jmpq .mutex_lock    #  4     0x42946  5      
  nop                 #  5     0x4294b  1      
  nop                 #  6     0x4294c  1      
                                               
.size pthread_mutex_lock, .-pthread_mutex_lock


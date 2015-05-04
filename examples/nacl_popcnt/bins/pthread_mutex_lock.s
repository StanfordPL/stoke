  .text
  .globl pthread_mutex_lock
  .type pthread_mutex_lock, @function

#! file-offset 0x429c0
#! rip-offset  0x429c0
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  
.pthread_mutex_lock:  #        0x429c0  0      
  movl %edi, %edi     #  1     0x429c0  2      
  xorl %edx, %edx     #  2     0x429c2  2      
  xorl %esi, %esi     #  3     0x429c4  2      
  jmpq .mutex_lock    #  4     0x429c6  5      
  nop                 #  5     0x429cb  1      
  nop                 #  6     0x429cc  1      
                                               
.size pthread_mutex_lock, .-pthread_mutex_lock


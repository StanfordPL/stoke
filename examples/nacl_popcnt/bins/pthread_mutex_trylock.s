  .text
  .globl pthread_mutex_trylock
  .type pthread_mutex_trylock, @function

#! file-offset 0x42b20
#! rip-offset  0x42b20
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  
.pthread_mutex_trylock:  #        0x42b20  0      
  movl %edi, %edi        #  1     0x42b20  2      
  xorl %edx, %edx        #  2     0x42b22  2      
  movl $0x1, %esi        #  3     0x42b24  5      
  jmpq .mutex_lock       #  4     0x42b29  5      
  nop                    #  5     0x42b2e  1      
  nop                    #  6     0x42b2f  1      
  nop                    #  7     0x42b30  1      
  nop                    #  8     0x42b31  1      
  nop                    #  9     0x42b32  1      
  nop                    #  10    0x42b33  1      
  nop                    #  11    0x42b34  1      
  nop                    #  12    0x42b35  1      
  nop                    #  13    0x42b36  1      
  nop                    #  14    0x42b37  1      
  nop                    #  15    0x42b38  1      
  nop                    #  16    0x42b39  1      
  nop                    #  17    0x42b3a  1      
  nop                    #  18    0x42b3b  1      
  nop                    #  19    0x42b3c  1      
  nop                    #  20    0x42b3d  1      
  nop                    #  21    0x42b3e  1      
  nop                    #  22    0x42b3f  1      
                                                  
.size pthread_mutex_trylock, .-pthread_mutex_trylock


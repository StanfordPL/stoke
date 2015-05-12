  .text
  .globl pthread_mutex_trylock
  .type pthread_mutex_trylock, @function

#! file-offset 0x42aa0
#! rip-offset  0x42aa0
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  
.pthread_mutex_trylock:  #        0x42aa0  0      
  movl %edi, %edi        #  1     0x42aa0  2      
  xorl %edx, %edx        #  2     0x42aa2  2      
  movl $0x1, %esi        #  3     0x42aa4  5      
  jmpq .mutex_lock       #  4     0x42aa9  5      
  nop                    #  5     0x42aae  1      
  nop                    #  6     0x42aaf  1      
  nop                    #  7     0x42ab0  1      
  nop                    #  8     0x42ab1  1      
  nop                    #  9     0x42ab2  1      
  nop                    #  10    0x42ab3  1      
  nop                    #  11    0x42ab4  1      
  nop                    #  12    0x42ab5  1      
  nop                    #  13    0x42ab6  1      
  nop                    #  14    0x42ab7  1      
  nop                    #  15    0x42ab8  1      
  nop                    #  16    0x42ab9  1      
  nop                    #  17    0x42aba  1      
  nop                    #  18    0x42abb  1      
  nop                    #  19    0x42abc  1      
  nop                    #  20    0x42abd  1      
  nop                    #  21    0x42abe  1      
  nop                    #  22    0x42abf  1      
                                                  
.size pthread_mutex_trylock, .-pthread_mutex_trylock


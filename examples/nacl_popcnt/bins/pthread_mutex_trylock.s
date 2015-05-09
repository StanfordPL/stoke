  .text
  .globl pthread_mutex_trylock
  .type pthread_mutex_trylock, @function

#! file-offset 0x42a80
#! rip-offset  0x42a80
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  
.pthread_mutex_trylock:  #        0x42a80  0      
  movl %edi, %edi        #  1     0x42a80  2      
  xorl %edx, %edx        #  2     0x42a82  2      
  movl $0x1, %esi        #  3     0x42a84  5      
  jmpq .mutex_lock       #  4     0x42a89  5      
  nop                    #  5     0x42a8e  1      
  nop                    #  6     0x42a8f  1      
  nop                    #  7     0x42a90  1      
  nop                    #  8     0x42a91  1      
  nop                    #  9     0x42a92  1      
  nop                    #  10    0x42a93  1      
  nop                    #  11    0x42a94  1      
  nop                    #  12    0x42a95  1      
  nop                    #  13    0x42a96  1      
  nop                    #  14    0x42a97  1      
  nop                    #  15    0x42a98  1      
  nop                    #  16    0x42a99  1      
  nop                    #  17    0x42a9a  1      
  nop                    #  18    0x42a9b  1      
  nop                    #  19    0x42a9c  1      
  nop                    #  20    0x42a9d  1      
  nop                    #  21    0x42a9e  1      
  nop                    #  22    0x42a9f  1      
                                                  
.size pthread_mutex_trylock, .-pthread_mutex_trylock


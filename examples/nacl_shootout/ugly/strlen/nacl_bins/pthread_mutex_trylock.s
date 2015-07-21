  .text
  .globl pthread_mutex_trylock
  .type pthread_mutex_trylock, @function

#! file-offset 0x6d1a0
#! rip-offset  0x2d1a0
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  Opcode    
.pthread_mutex_trylock:  #        0x2d1a0  0      OPC=0     
  movl %edi, %edi        #  1     0x2d1a0  2      OPC=1157  
  xorl %edx, %edx        #  2     0x2d1a2  2      OPC=3758  
  movl $0x1, %esi        #  3     0x2d1a4  5      OPC=1154  
  jmpq .mutex_lock       #  4     0x2d1a9  5      OPC=930   
  nop                    #  5     0x2d1ae  1      OPC=1343  
  nop                    #  6     0x2d1af  1      OPC=1343  
  nop                    #  7     0x2d1b0  1      OPC=1343  
  nop                    #  8     0x2d1b1  1      OPC=1343  
  nop                    #  9     0x2d1b2  1      OPC=1343  
  nop                    #  10    0x2d1b3  1      OPC=1343  
  nop                    #  11    0x2d1b4  1      OPC=1343  
  nop                    #  12    0x2d1b5  1      OPC=1343  
  nop                    #  13    0x2d1b6  1      OPC=1343  
  nop                    #  14    0x2d1b7  1      OPC=1343  
  nop                    #  15    0x2d1b8  1      OPC=1343  
  nop                    #  16    0x2d1b9  1      OPC=1343  
  nop                    #  17    0x2d1ba  1      OPC=1343  
  nop                    #  18    0x2d1bb  1      OPC=1343  
  nop                    #  19    0x2d1bc  1      OPC=1343  
  nop                    #  20    0x2d1bd  1      OPC=1343  
  nop                    #  21    0x2d1be  1      OPC=1343  
  nop                    #  22    0x2d1bf  1      OPC=1343  
                                                            
.size pthread_mutex_trylock, .-pthread_mutex_trylock


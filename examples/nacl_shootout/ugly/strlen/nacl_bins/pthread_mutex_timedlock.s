  .text
  .globl pthread_mutex_timedlock
  .type pthread_mutex_timedlock, @function

#! file-offset 0x6d020
#! rip-offset  0x2d020
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.pthread_mutex_timedlock:  #        0x2d020  0      OPC=0     
  movl %esi, %edx          #  1     0x2d020  2      OPC=1157  
  movl %edi, %edi          #  2     0x2d022  2      OPC=1157  
  xorl %esi, %esi          #  3     0x2d024  2      OPC=3758  
  jmpq .mutex_lock         #  4     0x2d026  5      OPC=930   
  nop                      #  5     0x2d02b  1      OPC=1343  
  nop                      #  6     0x2d02c  1      OPC=1343  
  nop                      #  7     0x2d02d  1      OPC=1343  
  nop                      #  8     0x2d02e  1      OPC=1343  
  nop                      #  9     0x2d02f  1      OPC=1343  
  nop                      #  10    0x2d030  1      OPC=1343  
  nop                      #  11    0x2d031  1      OPC=1343  
  nop                      #  12    0x2d032  1      OPC=1343  
  nop                      #  13    0x2d033  1      OPC=1343  
  nop                      #  14    0x2d034  1      OPC=1343  
  nop                      #  15    0x2d035  1      OPC=1343  
  nop                      #  16    0x2d036  1      OPC=1343  
  nop                      #  17    0x2d037  1      OPC=1343  
  nop                      #  18    0x2d038  1      OPC=1343  
  nop                      #  19    0x2d039  1      OPC=1343  
  nop                      #  20    0x2d03a  1      OPC=1343  
  nop                      #  21    0x2d03b  1      OPC=1343  
  nop                      #  22    0x2d03c  1      OPC=1343  
  nop                      #  23    0x2d03d  1      OPC=1343  
  nop                      #  24    0x2d03e  1      OPC=1343  
  nop                      #  25    0x2d03f  1      OPC=1343  
                                                              
.size pthread_mutex_timedlock, .-pthread_mutex_timedlock


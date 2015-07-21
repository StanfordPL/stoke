  .text
  .globl thread_join
  .type thread_join, @function

#! file-offset 0x6ca40
#! rip-offset  0x2ca40
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode    
.thread_join:         #        0x2ca40  0      OPC=0     
  xorl %esi, %esi     #  1     0x2ca40  2      OPC=3758  
  jmpq .pthread_join  #  2     0x2ca42  5      OPC=930   
  nop                 #  3     0x2ca47  1      OPC=1343  
  nop                 #  4     0x2ca48  1      OPC=1343  
  nop                 #  5     0x2ca49  1      OPC=1343  
  nop                 #  6     0x2ca4a  1      OPC=1343  
  nop                 #  7     0x2ca4b  1      OPC=1343  
  nop                 #  8     0x2ca4c  1      OPC=1343  
  nop                 #  9     0x2ca4d  1      OPC=1343  
  nop                 #  10    0x2ca4e  1      OPC=1343  
  nop                 #  11    0x2ca4f  1      OPC=1343  
  nop                 #  12    0x2ca50  1      OPC=1343  
  nop                 #  13    0x2ca51  1      OPC=1343  
  nop                 #  14    0x2ca52  1      OPC=1343  
  nop                 #  15    0x2ca53  1      OPC=1343  
  nop                 #  16    0x2ca54  1      OPC=1343  
  nop                 #  17    0x2ca55  1      OPC=1343  
  nop                 #  18    0x2ca56  1      OPC=1343  
  nop                 #  19    0x2ca57  1      OPC=1343  
  nop                 #  20    0x2ca58  1      OPC=1343  
  nop                 #  21    0x2ca59  1      OPC=1343  
  nop                 #  22    0x2ca5a  1      OPC=1343  
  nop                 #  23    0x2ca5b  1      OPC=1343  
  nop                 #  24    0x2ca5c  1      OPC=1343  
  nop                 #  25    0x2ca5d  1      OPC=1343  
  nop                 #  26    0x2ca5e  1      OPC=1343  
  nop                 #  27    0x2ca5f  1      OPC=1343  
                                                         
.size thread_join, .-thread_join


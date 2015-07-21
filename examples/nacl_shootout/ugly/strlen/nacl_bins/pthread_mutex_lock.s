  .text
  .globl pthread_mutex_lock
  .type pthread_mutex_lock, @function

#! file-offset 0x6d040
#! rip-offset  0x2d040
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode    
.pthread_mutex_lock:  #        0x2d040  0      OPC=0     
  movl %edi, %edi     #  1     0x2d040  2      OPC=1157  
  xorl %edx, %edx     #  2     0x2d042  2      OPC=3758  
  xorl %esi, %esi     #  3     0x2d044  2      OPC=3758  
  jmpq .mutex_lock    #  4     0x2d046  5      OPC=930   
  nop                 #  5     0x2d04b  1      OPC=1343  
  nop                 #  6     0x2d04c  1      OPC=1343  
  nop                 #  7     0x2d04d  1      OPC=1343  
  nop                 #  8     0x2d04e  1      OPC=1343  
  nop                 #  9     0x2d04f  1      OPC=1343  
  nop                 #  10    0x2d050  1      OPC=1343  
  nop                 #  11    0x2d051  1      OPC=1343  
  nop                 #  12    0x2d052  1      OPC=1343  
  nop                 #  13    0x2d053  1      OPC=1343  
  nop                 #  14    0x2d054  1      OPC=1343  
  nop                 #  15    0x2d055  1      OPC=1343  
  nop                 #  16    0x2d056  1      OPC=1343  
  nop                 #  17    0x2d057  1      OPC=1343  
  nop                 #  18    0x2d058  1      OPC=1343  
  nop                 #  19    0x2d059  1      OPC=1343  
  nop                 #  20    0x2d05a  1      OPC=1343  
  nop                 #  21    0x2d05b  1      OPC=1343  
  nop                 #  22    0x2d05c  1      OPC=1343  
  nop                 #  23    0x2d05d  1      OPC=1343  
  nop                 #  24    0x2d05e  1      OPC=1343  
  nop                 #  25    0x2d05f  1      OPC=1343  
                                                         
.size pthread_mutex_lock, .-pthread_mutex_lock


  .text
  .globl pthread_cond_broadcast
  .type pthread_cond_broadcast, @function

#! file-offset 0x6f380
#! rip-offset  0x2f380
#! capacity    32 bytes

# Text                    #  Line  RIP      Bytes  Opcode    
.pthread_cond_broadcast:  #        0x2f380  0      OPC=0     
  movl %edi, %edi         #  1     0x2f380  2      OPC=1157  
  movl $0x7fffffff, %esi  #  2     0x2f382  5      OPC=1154  
  jmpq .pulse             #  3     0x2f387  5      OPC=930   
  nop                     #  4     0x2f38c  1      OPC=1343  
  nop                     #  5     0x2f38d  1      OPC=1343  
  nop                     #  6     0x2f38e  1      OPC=1343  
  nop                     #  7     0x2f38f  1      OPC=1343  
  nop                     #  8     0x2f390  1      OPC=1343  
  nop                     #  9     0x2f391  1      OPC=1343  
  nop                     #  10    0x2f392  1      OPC=1343  
  nop                     #  11    0x2f393  1      OPC=1343  
  nop                     #  12    0x2f394  1      OPC=1343  
  nop                     #  13    0x2f395  1      OPC=1343  
  nop                     #  14    0x2f396  1      OPC=1343  
  nop                     #  15    0x2f397  1      OPC=1343  
  nop                     #  16    0x2f398  1      OPC=1343  
  nop                     #  17    0x2f399  1      OPC=1343  
  nop                     #  18    0x2f39a  1      OPC=1343  
  nop                     #  19    0x2f39b  1      OPC=1343  
  nop                     #  20    0x2f39c  1      OPC=1343  
  nop                     #  21    0x2f39d  1      OPC=1343  
  nop                     #  22    0x2f39e  1      OPC=1343  
  nop                     #  23    0x2f39f  1      OPC=1343  
  nop                     #  24    0x2f3a0  1      OPC=1343  
  nop                     #  25    0x2f3a1  1      OPC=1343  
  nop                     #  26    0x2f3a2  1      OPC=1343  
  nop                     #  27    0x2f3a3  1      OPC=1343  
  nop                     #  28    0x2f3a4  1      OPC=1343  
                                                             
.size pthread_cond_broadcast, .-pthread_cond_broadcast


  .text
  .globl pthread_cond_wait
  .type pthread_cond_wait, @function

#! file-offset 0x6f300
#! rip-offset  0x2f300
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
.pthread_cond_wait:                 #        0x2f300  0      OPC=0     
  movl %edi, %edi                   #  1     0x2f300  2      OPC=1157  
  movl %esi, %esi                   #  2     0x2f302  2      OPC=1157  
  xorl %edx, %edx                   #  3     0x2f304  2      OPC=3758  
  jmpq .pthread_cond_timedwait_abs  #  4     0x2f306  5      OPC=930   
  nop                               #  5     0x2f30b  1      OPC=1343  
  nop                               #  6     0x2f30c  1      OPC=1343  
  nop                               #  7     0x2f30d  1      OPC=1343  
  nop                               #  8     0x2f30e  1      OPC=1343  
  nop                               #  9     0x2f30f  1      OPC=1343  
  nop                               #  10    0x2f310  1      OPC=1343  
  nop                               #  11    0x2f311  1      OPC=1343  
  nop                               #  12    0x2f312  1      OPC=1343  
  nop                               #  13    0x2f313  1      OPC=1343  
  nop                               #  14    0x2f314  1      OPC=1343  
  nop                               #  15    0x2f315  1      OPC=1343  
  nop                               #  16    0x2f316  1      OPC=1343  
  nop                               #  17    0x2f317  1      OPC=1343  
  nop                               #  18    0x2f318  1      OPC=1343  
  nop                               #  19    0x2f319  1      OPC=1343  
  nop                               #  20    0x2f31a  1      OPC=1343  
  nop                               #  21    0x2f31b  1      OPC=1343  
  nop                               #  22    0x2f31c  1      OPC=1343  
  nop                               #  23    0x2f31d  1      OPC=1343  
  nop                               #  24    0x2f31e  1      OPC=1343  
  nop                               #  25    0x2f31f  1      OPC=1343  
                                                                       
.size pthread_cond_wait, .-pthread_cond_wait


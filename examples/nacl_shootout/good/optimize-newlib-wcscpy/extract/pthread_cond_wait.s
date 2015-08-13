  .text
  .globl pthread_cond_wait
  .type pthread_cond_wait, @function

#! file-offset 0x6f840
#! rip-offset  0x2f840
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode            
.pthread_cond_wait:                 #        0x2f840  0      OPC=<label>       
  movl %edi, %edi                   #  1     0x2f840  2      OPC=movl_r32_r32  
  movl %esi, %esi                   #  2     0x2f842  2      OPC=movl_r32_r32  
  xorl %edx, %edx                   #  3     0x2f844  2      OPC=xorl_r32_r32  
  jmpq .pthread_cond_timedwait_abs  #  4     0x2f846  5      OPC=jmpq_label_1  
  nop                               #  5     0x2f84b  1      OPC=nop           
  nop                               #  6     0x2f84c  1      OPC=nop           
  nop                               #  7     0x2f84d  1      OPC=nop           
  nop                               #  8     0x2f84e  1      OPC=nop           
  nop                               #  9     0x2f84f  1      OPC=nop           
  nop                               #  10    0x2f850  1      OPC=nop           
  nop                               #  11    0x2f851  1      OPC=nop           
  nop                               #  12    0x2f852  1      OPC=nop           
  nop                               #  13    0x2f853  1      OPC=nop           
  nop                               #  14    0x2f854  1      OPC=nop           
  nop                               #  15    0x2f855  1      OPC=nop           
  nop                               #  16    0x2f856  1      OPC=nop           
  nop                               #  17    0x2f857  1      OPC=nop           
  nop                               #  18    0x2f858  1      OPC=nop           
  nop                               #  19    0x2f859  1      OPC=nop           
  nop                               #  20    0x2f85a  1      OPC=nop           
  nop                               #  21    0x2f85b  1      OPC=nop           
  nop                               #  22    0x2f85c  1      OPC=nop           
  nop                               #  23    0x2f85d  1      OPC=nop           
  nop                               #  24    0x2f85e  1      OPC=nop           
  nop                               #  25    0x2f85f  1      OPC=nop           
                                                                               
.size pthread_cond_wait, .-pthread_cond_wait


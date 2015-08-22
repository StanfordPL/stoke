  .text
  .globl pthread_cond_wait
  .type pthread_cond_wait, @function

#! file-offset 0x70260
#! rip-offset  0x30260
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode            
.pthread_cond_wait:                 #        0x30260  0      OPC=<label>       
  movl %edi, %edi                   #  1     0x30260  2      OPC=movl_r32_r32  
  movl %esi, %esi                   #  2     0x30262  2      OPC=movl_r32_r32  
  xorl %edx, %edx                   #  3     0x30264  2      OPC=xorl_r32_r32  
  jmpq .pthread_cond_timedwait_abs  #  4     0x30266  5      OPC=jmpq_label_1  
  nop                               #  5     0x3026b  1      OPC=nop           
  nop                               #  6     0x3026c  1      OPC=nop           
  nop                               #  7     0x3026d  1      OPC=nop           
  nop                               #  8     0x3026e  1      OPC=nop           
  nop                               #  9     0x3026f  1      OPC=nop           
  nop                               #  10    0x30270  1      OPC=nop           
  nop                               #  11    0x30271  1      OPC=nop           
  nop                               #  12    0x30272  1      OPC=nop           
  nop                               #  13    0x30273  1      OPC=nop           
  nop                               #  14    0x30274  1      OPC=nop           
  nop                               #  15    0x30275  1      OPC=nop           
  nop                               #  16    0x30276  1      OPC=nop           
  nop                               #  17    0x30277  1      OPC=nop           
  nop                               #  18    0x30278  1      OPC=nop           
  nop                               #  19    0x30279  1      OPC=nop           
  nop                               #  20    0x3027a  1      OPC=nop           
  nop                               #  21    0x3027b  1      OPC=nop           
  nop                               #  22    0x3027c  1      OPC=nop           
  nop                               #  23    0x3027d  1      OPC=nop           
  nop                               #  24    0x3027e  1      OPC=nop           
  nop                               #  25    0x3027f  1      OPC=nop           
                                                                               
.size pthread_cond_wait, .-pthread_cond_wait


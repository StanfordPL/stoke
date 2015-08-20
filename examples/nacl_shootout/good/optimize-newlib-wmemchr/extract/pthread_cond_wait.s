  .text
  .globl pthread_cond_wait
  .type pthread_cond_wait, @function

#! file-offset 0x6fb40
#! rip-offset  0x2fb40
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode            
.pthread_cond_wait:                 #        0x2fb40  0      OPC=<label>       
  movl %edi, %edi                   #  1     0x2fb40  2      OPC=movl_r32_r32  
  movl %esi, %esi                   #  2     0x2fb42  2      OPC=movl_r32_r32  
  xorl %edx, %edx                   #  3     0x2fb44  2      OPC=xorl_r32_r32  
  jmpq .pthread_cond_timedwait_abs  #  4     0x2fb46  5      OPC=jmpq_label_1  
  nop                               #  5     0x2fb4b  1      OPC=nop           
  nop                               #  6     0x2fb4c  1      OPC=nop           
  nop                               #  7     0x2fb4d  1      OPC=nop           
  nop                               #  8     0x2fb4e  1      OPC=nop           
  nop                               #  9     0x2fb4f  1      OPC=nop           
  nop                               #  10    0x2fb50  1      OPC=nop           
  nop                               #  11    0x2fb51  1      OPC=nop           
  nop                               #  12    0x2fb52  1      OPC=nop           
  nop                               #  13    0x2fb53  1      OPC=nop           
  nop                               #  14    0x2fb54  1      OPC=nop           
  nop                               #  15    0x2fb55  1      OPC=nop           
  nop                               #  16    0x2fb56  1      OPC=nop           
  nop                               #  17    0x2fb57  1      OPC=nop           
  nop                               #  18    0x2fb58  1      OPC=nop           
  nop                               #  19    0x2fb59  1      OPC=nop           
  nop                               #  20    0x2fb5a  1      OPC=nop           
  nop                               #  21    0x2fb5b  1      OPC=nop           
  nop                               #  22    0x2fb5c  1      OPC=nop           
  nop                               #  23    0x2fb5d  1      OPC=nop           
  nop                               #  24    0x2fb5e  1      OPC=nop           
  nop                               #  25    0x2fb5f  1      OPC=nop           
                                                                               
.size pthread_cond_wait, .-pthread_cond_wait


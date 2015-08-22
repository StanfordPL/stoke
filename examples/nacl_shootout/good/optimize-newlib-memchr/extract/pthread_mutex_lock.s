  .text
  .globl pthread_mutex_lock
  .type pthread_mutex_lock, @function

#! file-offset 0x6dfa0
#! rip-offset  0x2dfa0
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode            
.pthread_mutex_lock:  #        0x2dfa0  0      OPC=<label>       
  movl %edi, %edi     #  1     0x2dfa0  2      OPC=movl_r32_r32  
  xorl %edx, %edx     #  2     0x2dfa2  2      OPC=xorl_r32_r32  
  xorl %esi, %esi     #  3     0x2dfa4  2      OPC=xorl_r32_r32  
  jmpq .mutex_lock    #  4     0x2dfa6  5      OPC=jmpq_label_1  
  nop                 #  5     0x2dfab  1      OPC=nop           
  nop                 #  6     0x2dfac  1      OPC=nop           
  nop                 #  7     0x2dfad  1      OPC=nop           
  nop                 #  8     0x2dfae  1      OPC=nop           
  nop                 #  9     0x2dfaf  1      OPC=nop           
  nop                 #  10    0x2dfb0  1      OPC=nop           
  nop                 #  11    0x2dfb1  1      OPC=nop           
  nop                 #  12    0x2dfb2  1      OPC=nop           
  nop                 #  13    0x2dfb3  1      OPC=nop           
  nop                 #  14    0x2dfb4  1      OPC=nop           
  nop                 #  15    0x2dfb5  1      OPC=nop           
  nop                 #  16    0x2dfb6  1      OPC=nop           
  nop                 #  17    0x2dfb7  1      OPC=nop           
  nop                 #  18    0x2dfb8  1      OPC=nop           
  nop                 #  19    0x2dfb9  1      OPC=nop           
  nop                 #  20    0x2dfba  1      OPC=nop           
  nop                 #  21    0x2dfbb  1      OPC=nop           
  nop                 #  22    0x2dfbc  1      OPC=nop           
  nop                 #  23    0x2dfbd  1      OPC=nop           
  nop                 #  24    0x2dfbe  1      OPC=nop           
  nop                 #  25    0x2dfbf  1      OPC=nop           
                                                                 
.size pthread_mutex_lock, .-pthread_mutex_lock


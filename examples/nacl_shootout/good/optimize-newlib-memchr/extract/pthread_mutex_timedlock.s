  .text
  .globl pthread_mutex_timedlock
  .type pthread_mutex_timedlock, @function

#! file-offset 0x6df80
#! rip-offset  0x2df80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode            
.pthread_mutex_timedlock:  #        0x2df80  0      OPC=<label>       
  movl %esi, %edx          #  1     0x2df80  2      OPC=movl_r32_r32  
  movl %edi, %edi          #  2     0x2df82  2      OPC=movl_r32_r32  
  xorl %esi, %esi          #  3     0x2df84  2      OPC=xorl_r32_r32  
  jmpq .mutex_lock         #  4     0x2df86  5      OPC=jmpq_label_1  
  nop                      #  5     0x2df8b  1      OPC=nop           
  nop                      #  6     0x2df8c  1      OPC=nop           
  nop                      #  7     0x2df8d  1      OPC=nop           
  nop                      #  8     0x2df8e  1      OPC=nop           
  nop                      #  9     0x2df8f  1      OPC=nop           
  nop                      #  10    0x2df90  1      OPC=nop           
  nop                      #  11    0x2df91  1      OPC=nop           
  nop                      #  12    0x2df92  1      OPC=nop           
  nop                      #  13    0x2df93  1      OPC=nop           
  nop                      #  14    0x2df94  1      OPC=nop           
  nop                      #  15    0x2df95  1      OPC=nop           
  nop                      #  16    0x2df96  1      OPC=nop           
  nop                      #  17    0x2df97  1      OPC=nop           
  nop                      #  18    0x2df98  1      OPC=nop           
  nop                      #  19    0x2df99  1      OPC=nop           
  nop                      #  20    0x2df9a  1      OPC=nop           
  nop                      #  21    0x2df9b  1      OPC=nop           
  nop                      #  22    0x2df9c  1      OPC=nop           
  nop                      #  23    0x2df9d  1      OPC=nop           
  nop                      #  24    0x2df9e  1      OPC=nop           
  nop                      #  25    0x2df9f  1      OPC=nop           
                                                                      
.size pthread_mutex_timedlock, .-pthread_mutex_timedlock


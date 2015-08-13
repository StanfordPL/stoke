  .text
  .globl thread_join
  .type thread_join, @function

#! file-offset 0x6cf80
#! rip-offset  0x2cf80
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode            
.thread_join:         #        0x2cf80  0      OPC=<label>       
  xorl %esi, %esi     #  1     0x2cf80  2      OPC=xorl_r32_r32  
  jmpq .pthread_join  #  2     0x2cf82  5      OPC=jmpq_label_1  
  nop                 #  3     0x2cf87  1      OPC=nop           
  nop                 #  4     0x2cf88  1      OPC=nop           
  nop                 #  5     0x2cf89  1      OPC=nop           
  nop                 #  6     0x2cf8a  1      OPC=nop           
  nop                 #  7     0x2cf8b  1      OPC=nop           
  nop                 #  8     0x2cf8c  1      OPC=nop           
  nop                 #  9     0x2cf8d  1      OPC=nop           
  nop                 #  10    0x2cf8e  1      OPC=nop           
  nop                 #  11    0x2cf8f  1      OPC=nop           
  nop                 #  12    0x2cf90  1      OPC=nop           
  nop                 #  13    0x2cf91  1      OPC=nop           
  nop                 #  14    0x2cf92  1      OPC=nop           
  nop                 #  15    0x2cf93  1      OPC=nop           
  nop                 #  16    0x2cf94  1      OPC=nop           
  nop                 #  17    0x2cf95  1      OPC=nop           
  nop                 #  18    0x2cf96  1      OPC=nop           
  nop                 #  19    0x2cf97  1      OPC=nop           
  nop                 #  20    0x2cf98  1      OPC=nop           
  nop                 #  21    0x2cf99  1      OPC=nop           
  nop                 #  22    0x2cf9a  1      OPC=nop           
  nop                 #  23    0x2cf9b  1      OPC=nop           
  nop                 #  24    0x2cf9c  1      OPC=nop           
  nop                 #  25    0x2cf9d  1      OPC=nop           
  nop                 #  26    0x2cf9e  1      OPC=nop           
  nop                 #  27    0x2cf9f  1      OPC=nop           
                                                                 
.size thread_join, .-thread_join


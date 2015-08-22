  .text
  .globl thread_join
  .type thread_join, @function

#! file-offset 0x6d9a0
#! rip-offset  0x2d9a0
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode            
.thread_join:         #        0x2d9a0  0      OPC=<label>       
  xorl %esi, %esi     #  1     0x2d9a0  2      OPC=xorl_r32_r32  
  jmpq .pthread_join  #  2     0x2d9a2  5      OPC=jmpq_label_1  
  nop                 #  3     0x2d9a7  1      OPC=nop           
  nop                 #  4     0x2d9a8  1      OPC=nop           
  nop                 #  5     0x2d9a9  1      OPC=nop           
  nop                 #  6     0x2d9aa  1      OPC=nop           
  nop                 #  7     0x2d9ab  1      OPC=nop           
  nop                 #  8     0x2d9ac  1      OPC=nop           
  nop                 #  9     0x2d9ad  1      OPC=nop           
  nop                 #  10    0x2d9ae  1      OPC=nop           
  nop                 #  11    0x2d9af  1      OPC=nop           
  nop                 #  12    0x2d9b0  1      OPC=nop           
  nop                 #  13    0x2d9b1  1      OPC=nop           
  nop                 #  14    0x2d9b2  1      OPC=nop           
  nop                 #  15    0x2d9b3  1      OPC=nop           
  nop                 #  16    0x2d9b4  1      OPC=nop           
  nop                 #  17    0x2d9b5  1      OPC=nop           
  nop                 #  18    0x2d9b6  1      OPC=nop           
  nop                 #  19    0x2d9b7  1      OPC=nop           
  nop                 #  20    0x2d9b8  1      OPC=nop           
  nop                 #  21    0x2d9b9  1      OPC=nop           
  nop                 #  22    0x2d9ba  1      OPC=nop           
  nop                 #  23    0x2d9bb  1      OPC=nop           
  nop                 #  24    0x2d9bc  1      OPC=nop           
  nop                 #  25    0x2d9bd  1      OPC=nop           
  nop                 #  26    0x2d9be  1      OPC=nop           
  nop                 #  27    0x2d9bf  1      OPC=nop           
                                                                 
.size thread_join, .-thread_join


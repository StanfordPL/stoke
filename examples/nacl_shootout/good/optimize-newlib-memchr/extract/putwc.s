  .text
  .globl putwc
  .type putwc, @function

#! file-offset 0x164560
#! rip-offset  0x124560
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.putwc:            #        0x124560  0      OPC=<label>       
  movl %esi, %esi  #  1     0x124560  2      OPC=movl_r32_r32  
  jmpq .fputwc     #  2     0x124562  5      OPC=jmpq_label_1  
  nop              #  3     0x124567  1      OPC=nop           
  nop              #  4     0x124568  1      OPC=nop           
  nop              #  5     0x124569  1      OPC=nop           
  nop              #  6     0x12456a  1      OPC=nop           
  nop              #  7     0x12456b  1      OPC=nop           
  nop              #  8     0x12456c  1      OPC=nop           
  nop              #  9     0x12456d  1      OPC=nop           
  nop              #  10    0x12456e  1      OPC=nop           
  nop              #  11    0x12456f  1      OPC=nop           
  nop              #  12    0x124570  1      OPC=nop           
  nop              #  13    0x124571  1      OPC=nop           
  nop              #  14    0x124572  1      OPC=nop           
  nop              #  15    0x124573  1      OPC=nop           
  nop              #  16    0x124574  1      OPC=nop           
  nop              #  17    0x124575  1      OPC=nop           
  nop              #  18    0x124576  1      OPC=nop           
  nop              #  19    0x124577  1      OPC=nop           
  nop              #  20    0x124578  1      OPC=nop           
  nop              #  21    0x124579  1      OPC=nop           
  nop              #  22    0x12457a  1      OPC=nop           
  nop              #  23    0x12457b  1      OPC=nop           
  nop              #  24    0x12457c  1      OPC=nop           
  nop              #  25    0x12457d  1      OPC=nop           
  nop              #  26    0x12457e  1      OPC=nop           
  nop              #  27    0x12457f  1      OPC=nop           
                                                               
.size putwc, .-putwc


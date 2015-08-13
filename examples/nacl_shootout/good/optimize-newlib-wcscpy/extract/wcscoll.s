  .text
  .globl wcscoll
  .type wcscoll, @function

#! file-offset 0x180ec0
#! rip-offset  0x140ec0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.wcscoll:          #        0x140ec0  0      OPC=<label>       
  movl %edi, %edi  #  1     0x140ec0  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x140ec2  2      OPC=movl_r32_r32  
  jmpq .wcscmp     #  3     0x140ec4  5      OPC=jmpq_label_1  
  nop              #  4     0x140ec9  1      OPC=nop           
  nop              #  5     0x140eca  1      OPC=nop           
  nop              #  6     0x140ecb  1      OPC=nop           
  nop              #  7     0x140ecc  1      OPC=nop           
  nop              #  8     0x140ecd  1      OPC=nop           
  nop              #  9     0x140ece  1      OPC=nop           
  nop              #  10    0x140ecf  1      OPC=nop           
  nop              #  11    0x140ed0  1      OPC=nop           
  nop              #  12    0x140ed1  1      OPC=nop           
  nop              #  13    0x140ed2  1      OPC=nop           
  nop              #  14    0x140ed3  1      OPC=nop           
  nop              #  15    0x140ed4  1      OPC=nop           
  nop              #  16    0x140ed5  1      OPC=nop           
  nop              #  17    0x140ed6  1      OPC=nop           
  nop              #  18    0x140ed7  1      OPC=nop           
  nop              #  19    0x140ed8  1      OPC=nop           
  nop              #  20    0x140ed9  1      OPC=nop           
  nop              #  21    0x140eda  1      OPC=nop           
  nop              #  22    0x140edb  1      OPC=nop           
  nop              #  23    0x140edc  1      OPC=nop           
  nop              #  24    0x140edd  1      OPC=nop           
  nop              #  25    0x140ede  1      OPC=nop           
  nop              #  26    0x140edf  1      OPC=nop           
                                                               
.size wcscoll, .-wcscoll


  .text
  .globl wcscoll
  .type wcscoll, @function

#! file-offset 0x181260
#! rip-offset  0x141260
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.wcscoll:          #        0x141260  0      OPC=<label>       
  movl %edi, %edi  #  1     0x141260  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x141262  2      OPC=movl_r32_r32  
  jmpq .wcscmp     #  3     0x141264  5      OPC=jmpq_label_1  
  nop              #  4     0x141269  1      OPC=nop           
  nop              #  5     0x14126a  1      OPC=nop           
  nop              #  6     0x14126b  1      OPC=nop           
  nop              #  7     0x14126c  1      OPC=nop           
  nop              #  8     0x14126d  1      OPC=nop           
  nop              #  9     0x14126e  1      OPC=nop           
  nop              #  10    0x14126f  1      OPC=nop           
  nop              #  11    0x141270  1      OPC=nop           
  nop              #  12    0x141271  1      OPC=nop           
  nop              #  13    0x141272  1      OPC=nop           
  nop              #  14    0x141273  1      OPC=nop           
  nop              #  15    0x141274  1      OPC=nop           
  nop              #  16    0x141275  1      OPC=nop           
  nop              #  17    0x141276  1      OPC=nop           
  nop              #  18    0x141277  1      OPC=nop           
  nop              #  19    0x141278  1      OPC=nop           
  nop              #  20    0x141279  1      OPC=nop           
  nop              #  21    0x14127a  1      OPC=nop           
  nop              #  22    0x14127b  1      OPC=nop           
  nop              #  23    0x14127c  1      OPC=nop           
  nop              #  24    0x14127d  1      OPC=nop           
  nop              #  25    0x14127e  1      OPC=nop           
  nop              #  26    0x14127f  1      OPC=nop           
                                                               
.size wcscoll, .-wcscoll


  .text
  .globl wcscoll
  .type wcscoll, @function

#! file-offset 0x181980
#! rip-offset  0x141980
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.wcscoll:          #        0x141980  0      OPC=<label>       
  movl %edi, %edi  #  1     0x141980  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x141982  2      OPC=movl_r32_r32  
  jmpq .wcscmp     #  3     0x141984  5      OPC=jmpq_label_1  
  nop              #  4     0x141989  1      OPC=nop           
  nop              #  5     0x14198a  1      OPC=nop           
  nop              #  6     0x14198b  1      OPC=nop           
  nop              #  7     0x14198c  1      OPC=nop           
  nop              #  8     0x14198d  1      OPC=nop           
  nop              #  9     0x14198e  1      OPC=nop           
  nop              #  10    0x14198f  1      OPC=nop           
  nop              #  11    0x141990  1      OPC=nop           
  nop              #  12    0x141991  1      OPC=nop           
  nop              #  13    0x141992  1      OPC=nop           
  nop              #  14    0x141993  1      OPC=nop           
  nop              #  15    0x141994  1      OPC=nop           
  nop              #  16    0x141995  1      OPC=nop           
  nop              #  17    0x141996  1      OPC=nop           
  nop              #  18    0x141997  1      OPC=nop           
  nop              #  19    0x141998  1      OPC=nop           
  nop              #  20    0x141999  1      OPC=nop           
  nop              #  21    0x14199a  1      OPC=nop           
  nop              #  22    0x14199b  1      OPC=nop           
  nop              #  23    0x14199c  1      OPC=nop           
  nop              #  24    0x14199d  1      OPC=nop           
  nop              #  25    0x14199e  1      OPC=nop           
  nop              #  26    0x14199f  1      OPC=nop           
                                                               
.size wcscoll, .-wcscoll


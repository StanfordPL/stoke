  .text
  .globl wcscoll
  .type wcscoll, @function

#! file-offset 0x180980
#! rip-offset  0x140980
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.wcscoll:          #        0x140980  0      OPC=0     
  movl %edi, %edi  #  1     0x140980  2      OPC=1157  
  movl %esi, %esi  #  2     0x140982  2      OPC=1157  
  jmpq .wcscmp     #  3     0x140984  5      OPC=930   
  nop              #  4     0x140989  1      OPC=1343  
  nop              #  5     0x14098a  1      OPC=1343  
  nop              #  6     0x14098b  1      OPC=1343  
  nop              #  7     0x14098c  1      OPC=1343  
  nop              #  8     0x14098d  1      OPC=1343  
  nop              #  9     0x14098e  1      OPC=1343  
  nop              #  10    0x14098f  1      OPC=1343  
  nop              #  11    0x140990  1      OPC=1343  
  nop              #  12    0x140991  1      OPC=1343  
  nop              #  13    0x140992  1      OPC=1343  
  nop              #  14    0x140993  1      OPC=1343  
  nop              #  15    0x140994  1      OPC=1343  
  nop              #  16    0x140995  1      OPC=1343  
  nop              #  17    0x140996  1      OPC=1343  
  nop              #  18    0x140997  1      OPC=1343  
  nop              #  19    0x140998  1      OPC=1343  
  nop              #  20    0x140999  1      OPC=1343  
  nop              #  21    0x14099a  1      OPC=1343  
  nop              #  22    0x14099b  1      OPC=1343  
  nop              #  23    0x14099c  1      OPC=1343  
  nop              #  24    0x14099d  1      OPC=1343  
  nop              #  25    0x14099e  1      OPC=1343  
  nop              #  26    0x14099f  1      OPC=1343  
                                                       
.size wcscoll, .-wcscoll


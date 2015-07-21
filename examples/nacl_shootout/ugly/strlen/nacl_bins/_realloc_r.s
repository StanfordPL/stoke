  .text
  .globl _realloc_r
  .type _realloc_r, @function

#! file-offset 0x156f40
#! rip-offset  0x116f40
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
._realloc_r:       #        0x116f40  0      OPC=0     
  movl %esi, %edi  #  1     0x116f40  2      OPC=1157  
  movl %edx, %esi  #  2     0x116f42  2      OPC=1157  
  jmpq .realloc    #  3     0x116f44  5      OPC=930   
  nop              #  4     0x116f49  1      OPC=1343  
  nop              #  5     0x116f4a  1      OPC=1343  
  nop              #  6     0x116f4b  1      OPC=1343  
  nop              #  7     0x116f4c  1      OPC=1343  
  nop              #  8     0x116f4d  1      OPC=1343  
  nop              #  9     0x116f4e  1      OPC=1343  
  nop              #  10    0x116f4f  1      OPC=1343  
  nop              #  11    0x116f50  1      OPC=1343  
  nop              #  12    0x116f51  1      OPC=1343  
  nop              #  13    0x116f52  1      OPC=1343  
  nop              #  14    0x116f53  1      OPC=1343  
  nop              #  15    0x116f54  1      OPC=1343  
  nop              #  16    0x116f55  1      OPC=1343  
  nop              #  17    0x116f56  1      OPC=1343  
  nop              #  18    0x116f57  1      OPC=1343  
  nop              #  19    0x116f58  1      OPC=1343  
  nop              #  20    0x116f59  1      OPC=1343  
  nop              #  21    0x116f5a  1      OPC=1343  
  nop              #  22    0x116f5b  1      OPC=1343  
  nop              #  23    0x116f5c  1      OPC=1343  
  nop              #  24    0x116f5d  1      OPC=1343  
  nop              #  25    0x116f5e  1      OPC=1343  
  nop              #  26    0x116f5f  1      OPC=1343  
                                                       
.size _realloc_r, .-_realloc_r


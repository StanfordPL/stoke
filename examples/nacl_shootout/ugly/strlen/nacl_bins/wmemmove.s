  .text
  .globl wmemmove
  .type wmemmove, @function

#! file-offset 0x1839e0
#! rip-offset  0x1439e0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.wmemmove:         #        0x1439e0  0      OPC=0     
  movl %edi, %edi  #  1     0x1439e0  2      OPC=1157  
  movl %esi, %esi  #  2     0x1439e2  2      OPC=1157  
  shll $0x2, %edx  #  3     0x1439e4  3      OPC=2269  
  jmpq .memmove    #  4     0x1439e7  5      OPC=930   
  nop              #  5     0x1439ec  1      OPC=1343  
  nop              #  6     0x1439ed  1      OPC=1343  
  nop              #  7     0x1439ee  1      OPC=1343  
  nop              #  8     0x1439ef  1      OPC=1343  
  nop              #  9     0x1439f0  1      OPC=1343  
  nop              #  10    0x1439f1  1      OPC=1343  
  nop              #  11    0x1439f2  1      OPC=1343  
  nop              #  12    0x1439f3  1      OPC=1343  
  nop              #  13    0x1439f4  1      OPC=1343  
  nop              #  14    0x1439f5  1      OPC=1343  
  nop              #  15    0x1439f6  1      OPC=1343  
  nop              #  16    0x1439f7  1      OPC=1343  
  nop              #  17    0x1439f8  1      OPC=1343  
  nop              #  18    0x1439f9  1      OPC=1343  
  nop              #  19    0x1439fa  1      OPC=1343  
  nop              #  20    0x1439fb  1      OPC=1343  
  nop              #  21    0x1439fc  1      OPC=1343  
  nop              #  22    0x1439fd  1      OPC=1343  
  nop              #  23    0x1439fe  1      OPC=1343  
  nop              #  24    0x1439ff  1      OPC=1343  
                                                       
.size wmemmove, .-wmemmove


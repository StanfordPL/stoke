  .text
  .globl wmemcpy
  .type wmemcpy, @function

#! file-offset 0x1839c0
#! rip-offset  0x1439c0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.wmemcpy:          #        0x1439c0  0      OPC=0     
  movl %edi, %edi  #  1     0x1439c0  2      OPC=1157  
  movl %esi, %esi  #  2     0x1439c2  2      OPC=1157  
  shll $0x2, %edx  #  3     0x1439c4  3      OPC=2269  
  jmpq .memcpy     #  4     0x1439c7  5      OPC=930   
  nop              #  5     0x1439cc  1      OPC=1343  
  nop              #  6     0x1439cd  1      OPC=1343  
  nop              #  7     0x1439ce  1      OPC=1343  
  nop              #  8     0x1439cf  1      OPC=1343  
  nop              #  9     0x1439d0  1      OPC=1343  
  nop              #  10    0x1439d1  1      OPC=1343  
  nop              #  11    0x1439d2  1      OPC=1343  
  nop              #  12    0x1439d3  1      OPC=1343  
  nop              #  13    0x1439d4  1      OPC=1343  
  nop              #  14    0x1439d5  1      OPC=1343  
  nop              #  15    0x1439d6  1      OPC=1343  
  nop              #  16    0x1439d7  1      OPC=1343  
  nop              #  17    0x1439d8  1      OPC=1343  
  nop              #  18    0x1439d9  1      OPC=1343  
  nop              #  19    0x1439da  1      OPC=1343  
  nop              #  20    0x1439db  1      OPC=1343  
  nop              #  21    0x1439dc  1      OPC=1343  
  nop              #  22    0x1439dd  1      OPC=1343  
  nop              #  23    0x1439de  1      OPC=1343  
  nop              #  24    0x1439df  1      OPC=1343  
                                                       
.size wmemcpy, .-wmemcpy


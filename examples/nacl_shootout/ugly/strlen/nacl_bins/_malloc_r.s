  .text
  .globl _malloc_r
  .type _malloc_r, @function

#! file-offset 0x1564e0
#! rip-offset  0x1164e0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
._malloc_r:        #        0x1164e0  0      OPC=0     
  movl %esi, %edi  #  1     0x1164e0  2      OPC=1157  
  jmpq .malloc     #  2     0x1164e2  5      OPC=930   
  nop              #  3     0x1164e7  1      OPC=1343  
  nop              #  4     0x1164e8  1      OPC=1343  
  nop              #  5     0x1164e9  1      OPC=1343  
  nop              #  6     0x1164ea  1      OPC=1343  
  nop              #  7     0x1164eb  1      OPC=1343  
  nop              #  8     0x1164ec  1      OPC=1343  
  nop              #  9     0x1164ed  1      OPC=1343  
  nop              #  10    0x1164ee  1      OPC=1343  
  nop              #  11    0x1164ef  1      OPC=1343  
  nop              #  12    0x1164f0  1      OPC=1343  
  nop              #  13    0x1164f1  1      OPC=1343  
  nop              #  14    0x1164f2  1      OPC=1343  
  nop              #  15    0x1164f3  1      OPC=1343  
  nop              #  16    0x1164f4  1      OPC=1343  
  nop              #  17    0x1164f5  1      OPC=1343  
  nop              #  18    0x1164f6  1      OPC=1343  
  nop              #  19    0x1164f7  1      OPC=1343  
  nop              #  20    0x1164f8  1      OPC=1343  
  nop              #  21    0x1164f9  1      OPC=1343  
  nop              #  22    0x1164fa  1      OPC=1343  
  nop              #  23    0x1164fb  1      OPC=1343  
  nop              #  24    0x1164fc  1      OPC=1343  
  nop              #  25    0x1164fd  1      OPC=1343  
  nop              #  26    0x1164fe  1      OPC=1343  
  nop              #  27    0x1164ff  1      OPC=1343  
                                                       
.size _malloc_r, .-_malloc_r


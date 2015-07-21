  .text
  .globl nanf
  .type nanf, @function

#! file-offset 0x18b5e0
#! rip-offset  0x14b5e0
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.nanf:                          #        0x14b5e0  0      OPC=0     
  popq %r11                     #  1     0x14b5e0  2      OPC=1694  
  movss 0xfeff1ea(%rip), %xmm0  #  2     0x14b5e2  8      OPC=1272  
  andl $0xffffffe0, %r11d       #  3     0x14b5ea  7      OPC=131   
  nop                           #  4     0x14b5f1  1      OPC=1343  
  nop                           #  5     0x14b5f2  1      OPC=1343  
  nop                           #  6     0x14b5f3  1      OPC=1343  
  nop                           #  7     0x14b5f4  1      OPC=1343  
  addq %r15, %r11               #  8     0x14b5f5  3      OPC=72    
  jmpq %r11                     #  9     0x14b5f8  3      OPC=928   
  nop                           #  10    0x14b5fb  1      OPC=1343  
  nop                           #  11    0x14b5fc  1      OPC=1343  
  nop                           #  12    0x14b5fd  1      OPC=1343  
  nop                           #  13    0x14b5fe  1      OPC=1343  
  nop                           #  14    0x14b5ff  1      OPC=1343  
  nop                           #  15    0x14b600  1      OPC=1343  
  nop                           #  16    0x14b601  1      OPC=1343  
  nop                           #  17    0x14b602  1      OPC=1343  
  nop                           #  18    0x14b603  1      OPC=1343  
  nop                           #  19    0x14b604  1      OPC=1343  
  nop                           #  20    0x14b605  1      OPC=1343  
  nop                           #  21    0x14b606  1      OPC=1343  
                                                                    
.size nanf, .-nanf


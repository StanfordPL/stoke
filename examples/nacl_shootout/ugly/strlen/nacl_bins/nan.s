  .text
  .globl nan
  .type nan, @function

#! file-offset 0x148e40
#! rip-offset  0x108e40
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.nan:                           #        0x108e40  0      OPC=0     
  popq %r11                     #  1     0x108e40  2      OPC=1694  
  movsd 0xff37546(%rip), %xmm0  #  2     0x108e42  8      OPC=1263  
  andl $0xffffffe0, %r11d       #  3     0x108e4a  7      OPC=131   
  nop                           #  4     0x108e51  1      OPC=1343  
  nop                           #  5     0x108e52  1      OPC=1343  
  nop                           #  6     0x108e53  1      OPC=1343  
  nop                           #  7     0x108e54  1      OPC=1343  
  addq %r15, %r11               #  8     0x108e55  3      OPC=72    
  jmpq %r11                     #  9     0x108e58  3      OPC=928   
  nop                           #  10    0x108e5b  1      OPC=1343  
  nop                           #  11    0x108e5c  1      OPC=1343  
  nop                           #  12    0x108e5d  1      OPC=1343  
  nop                           #  13    0x108e5e  1      OPC=1343  
  nop                           #  14    0x108e5f  1      OPC=1343  
  nop                           #  15    0x108e60  1      OPC=1343  
  nop                           #  16    0x108e61  1      OPC=1343  
  nop                           #  17    0x108e62  1      OPC=1343  
  nop                           #  18    0x108e63  1      OPC=1343  
  nop                           #  19    0x108e64  1      OPC=1343  
  nop                           #  20    0x108e65  1      OPC=1343  
  nop                           #  21    0x108e66  1      OPC=1343  
                                                                    
.size nan, .-nan


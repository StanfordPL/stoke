  .text
  .globl matherr
  .type matherr, @function

#! file-offset 0x148e20
#! rip-offset  0x108e20
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.matherr:                  #        0x108e20  0      OPC=0     
  popq %r11                #  1     0x108e20  2      OPC=1694  
  xorl %eax, %eax          #  2     0x108e22  2      OPC=3758  
  andl $0xffffffe0, %r11d  #  3     0x108e24  7      OPC=131   
  nop                      #  4     0x108e2b  1      OPC=1343  
  nop                      #  5     0x108e2c  1      OPC=1343  
  nop                      #  6     0x108e2d  1      OPC=1343  
  nop                      #  7     0x108e2e  1      OPC=1343  
  addq %r15, %r11          #  8     0x108e2f  3      OPC=72    
  jmpq %r11                #  9     0x108e32  3      OPC=928   
  nop                      #  10    0x108e35  1      OPC=1343  
  nop                      #  11    0x108e36  1      OPC=1343  
  nop                      #  12    0x108e37  1      OPC=1343  
  nop                      #  13    0x108e38  1      OPC=1343  
  nop                      #  14    0x108e39  1      OPC=1343  
  nop                      #  15    0x108e3a  1      OPC=1343  
  nop                      #  16    0x108e3b  1      OPC=1343  
  nop                      #  17    0x108e3c  1      OPC=1343  
  nop                      #  18    0x108e3d  1      OPC=1343  
  nop                      #  19    0x108e3e  1      OPC=1343  
  nop                      #  20    0x108e3f  1      OPC=1343  
  nop                      #  21    0x108e40  1      OPC=1343  
  nop                      #  22    0x108e41  1      OPC=1343  
  nop                      #  23    0x108e42  1      OPC=1343  
  nop                      #  24    0x108e43  1      OPC=1343  
  nop                      #  25    0x108e44  1      OPC=1343  
  nop                      #  26    0x108e45  1      OPC=1343  
  nop                      #  27    0x108e46  1      OPC=1343  
                                                               
.size matherr, .-matherr


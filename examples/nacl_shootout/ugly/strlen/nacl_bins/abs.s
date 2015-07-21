  .text
  .globl abs
  .type abs, @function

#! file-offset 0x183da0
#! rip-offset  0x143da0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.abs:                      #        0x143da0  0      OPC=0     
  movl %edi, %edx          #  1     0x143da0  2      OPC=1157  
  popq %r11                #  2     0x143da2  2      OPC=1694  
  sarl $0x1f, %edx         #  3     0x143da4  3      OPC=2096  
  movl %edx, %eax          #  4     0x143da7  2      OPC=1157  
  xorl %edi, %eax          #  5     0x143da9  2      OPC=3758  
  subl %edx, %eax          #  6     0x143dab  2      OPC=2386  
  andl $0xffffffe0, %r11d  #  7     0x143dad  7      OPC=131   
  nop                      #  8     0x143db4  1      OPC=1343  
  nop                      #  9     0x143db5  1      OPC=1343  
  nop                      #  10    0x143db6  1      OPC=1343  
  nop                      #  11    0x143db7  1      OPC=1343  
  addq %r15, %r11          #  12    0x143db8  3      OPC=72    
  jmpq %r11                #  13    0x143dbb  3      OPC=928   
  nop                      #  14    0x143dbe  1      OPC=1343  
  nop                      #  15    0x143dbf  1      OPC=1343  
  nop                      #  16    0x143dc0  1      OPC=1343  
  nop                      #  17    0x143dc1  1      OPC=1343  
  nop                      #  18    0x143dc2  1      OPC=1343  
  nop                      #  19    0x143dc3  1      OPC=1343  
  nop                      #  20    0x143dc4  1      OPC=1343  
  nop                      #  21    0x143dc5  1      OPC=1343  
  nop                      #  22    0x143dc6  1      OPC=1343  
                                                               
.size abs, .-abs


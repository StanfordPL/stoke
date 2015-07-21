  .text
  .globl pthread_attr_getscope
  .type pthread_attr_getscope, @function

#! file-offset 0x6d380
#! rip-offset  0x2d380
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.pthread_attr_getscope:     #        0x2d380  0      OPC=0     
  popq %r11                 #  1     0x2d380  2      OPC=1694  
  movl %esi, %esi           #  2     0x2d382  2      OPC=1157  
  xorl %eax, %eax           #  3     0x2d384  2      OPC=3758  
  movl %esi, %esi           #  4     0x2d386  2      OPC=1157  
  movl $0x1, (%r15,%rsi,1)  #  5     0x2d388  8      OPC=1135  
  andl $0xffffffe0, %r11d   #  6     0x2d390  7      OPC=131   
  nop                       #  7     0x2d397  1      OPC=1343  
  nop                       #  8     0x2d398  1      OPC=1343  
  nop                       #  9     0x2d399  1      OPC=1343  
  nop                       #  10    0x2d39a  1      OPC=1343  
  addq %r15, %r11           #  11    0x2d39b  3      OPC=72    
  jmpq %r11                 #  12    0x2d39e  3      OPC=928   
  nop                       #  13    0x2d3a1  1      OPC=1343  
  nop                       #  14    0x2d3a2  1      OPC=1343  
  nop                       #  15    0x2d3a3  1      OPC=1343  
  nop                       #  16    0x2d3a4  1      OPC=1343  
  nop                       #  17    0x2d3a5  1      OPC=1343  
  nop                       #  18    0x2d3a6  1      OPC=1343  
                                                               
.size pthread_attr_getscope, .-pthread_attr_getscope


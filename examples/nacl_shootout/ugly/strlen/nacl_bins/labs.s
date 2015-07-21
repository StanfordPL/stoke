  .text
  .globl labs
  .type labs, @function

#! file-offset 0x1891c0
#! rip-offset  0x1491c0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.labs:                     #        0x1491c0  0      OPC=0     
  movl %edi, %edx          #  1     0x1491c0  2      OPC=1157  
  popq %r11                #  2     0x1491c2  2      OPC=1694  
  sarl $0x1f, %edx         #  3     0x1491c4  3      OPC=2096  
  movl %edx, %eax          #  4     0x1491c7  2      OPC=1157  
  xorl %edi, %eax          #  5     0x1491c9  2      OPC=3758  
  subl %edx, %eax          #  6     0x1491cb  2      OPC=2386  
  andl $0xffffffe0, %r11d  #  7     0x1491cd  7      OPC=131   
  nop                      #  8     0x1491d4  1      OPC=1343  
  nop                      #  9     0x1491d5  1      OPC=1343  
  nop                      #  10    0x1491d6  1      OPC=1343  
  nop                      #  11    0x1491d7  1      OPC=1343  
  addq %r15, %r11          #  12    0x1491d8  3      OPC=72    
  jmpq %r11                #  13    0x1491db  3      OPC=928   
  nop                      #  14    0x1491de  1      OPC=1343  
  nop                      #  15    0x1491df  1      OPC=1343  
  nop                      #  16    0x1491e0  1      OPC=1343  
  nop                      #  17    0x1491e1  1      OPC=1343  
  nop                      #  18    0x1491e2  1      OPC=1343  
  nop                      #  19    0x1491e3  1      OPC=1343  
  nop                      #  20    0x1491e4  1      OPC=1343  
  nop                      #  21    0x1491e5  1      OPC=1343  
  nop                      #  22    0x1491e6  1      OPC=1343  
                                                               
.size labs, .-labs


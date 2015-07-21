  .text
  .globl iswdigit
  .type iswdigit, @function

#! file-offset 0x15e280
#! rip-offset  0x11e280
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswdigit:                 #        0x11e280  0      OPC=0     
  popq %r11                #  1     0x11e280  2      OPC=1694  
  subl $0x30, %edi         #  2     0x11e282  3      OPC=2384  
  xorl %eax, %eax          #  3     0x11e285  2      OPC=3758  
  cmpl $0x9, %edi          #  4     0x11e287  3      OPC=470   
  setbe %al                #  5     0x11e28a  3      OPC=2172  
  andl $0xffffffe0, %r11d  #  6     0x11e28d  7      OPC=131   
  nop                      #  7     0x11e294  1      OPC=1343  
  nop                      #  8     0x11e295  1      OPC=1343  
  nop                      #  9     0x11e296  1      OPC=1343  
  nop                      #  10    0x11e297  1      OPC=1343  
  addq %r15, %r11          #  11    0x11e298  3      OPC=72    
  jmpq %r11                #  12    0x11e29b  3      OPC=928   
  nop                      #  13    0x11e29e  1      OPC=1343  
  nop                      #  14    0x11e29f  1      OPC=1343  
  nop                      #  15    0x11e2a0  1      OPC=1343  
  nop                      #  16    0x11e2a1  1      OPC=1343  
  nop                      #  17    0x11e2a2  1      OPC=1343  
  nop                      #  18    0x11e2a3  1      OPC=1343  
  nop                      #  19    0x11e2a4  1      OPC=1343  
  nop                      #  20    0x11e2a5  1      OPC=1343  
  nop                      #  21    0x11e2a6  1      OPC=1343  
                                                               
.size iswdigit, .-iswdigit


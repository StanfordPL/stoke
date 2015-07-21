  .text
  .globl __seofread
  .type __seofread, @function

#! file-offset 0x165cc0
#! rip-offset  0x125cc0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.__seofread:               #        0x125cc0  0      OPC=0     
  popq %r11                #  1     0x125cc0  2      OPC=1694  
  xorl %eax, %eax          #  2     0x125cc2  2      OPC=3758  
  andl $0xffffffe0, %r11d  #  3     0x125cc4  7      OPC=131   
  nop                      #  4     0x125ccb  1      OPC=1343  
  nop                      #  5     0x125ccc  1      OPC=1343  
  nop                      #  6     0x125ccd  1      OPC=1343  
  nop                      #  7     0x125cce  1      OPC=1343  
  addq %r15, %r11          #  8     0x125ccf  3      OPC=72    
  jmpq %r11                #  9     0x125cd2  3      OPC=928   
  nop                      #  10    0x125cd5  1      OPC=1343  
  nop                      #  11    0x125cd6  1      OPC=1343  
  nop                      #  12    0x125cd7  1      OPC=1343  
  nop                      #  13    0x125cd8  1      OPC=1343  
  nop                      #  14    0x125cd9  1      OPC=1343  
  nop                      #  15    0x125cda  1      OPC=1343  
  nop                      #  16    0x125cdb  1      OPC=1343  
  nop                      #  17    0x125cdc  1      OPC=1343  
  nop                      #  18    0x125cdd  1      OPC=1343  
  nop                      #  19    0x125cde  1      OPC=1343  
  nop                      #  20    0x125cdf  1      OPC=1343  
  nop                      #  21    0x125ce0  1      OPC=1343  
  nop                      #  22    0x125ce1  1      OPC=1343  
  nop                      #  23    0x125ce2  1      OPC=1343  
  nop                      #  24    0x125ce3  1      OPC=1343  
  nop                      #  25    0x125ce4  1      OPC=1343  
  nop                      #  26    0x125ce5  1      OPC=1343  
  nop                      #  27    0x125ce6  1      OPC=1343  
                                                               
.size __seofread, .-__seofread


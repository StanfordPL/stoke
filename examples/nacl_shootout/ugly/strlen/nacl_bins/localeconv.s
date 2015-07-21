  .text
  .globl localeconv
  .type localeconv, @function

#! file-offset 0x15fb80
#! rip-offset  0x11fb80
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.localeconv:               #        0x11fb80  0      OPC=0     
  popq %r11                #  1     0x11fb80  2      OPC=1694  
  movl $0x10070e80, %eax   #  2     0x11fb82  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x11fb87  7      OPC=131   
  nop                      #  4     0x11fb8e  1      OPC=1343  
  nop                      #  5     0x11fb8f  1      OPC=1343  
  nop                      #  6     0x11fb90  1      OPC=1343  
  nop                      #  7     0x11fb91  1      OPC=1343  
  addq %r15, %r11          #  8     0x11fb92  3      OPC=72    
  jmpq %r11                #  9     0x11fb95  3      OPC=928   
  nop                      #  10    0x11fb98  1      OPC=1343  
  nop                      #  11    0x11fb99  1      OPC=1343  
  nop                      #  12    0x11fb9a  1      OPC=1343  
  nop                      #  13    0x11fb9b  1      OPC=1343  
  nop                      #  14    0x11fb9c  1      OPC=1343  
  nop                      #  15    0x11fb9d  1      OPC=1343  
  nop                      #  16    0x11fb9e  1      OPC=1343  
  nop                      #  17    0x11fb9f  1      OPC=1343  
  nop                      #  18    0x11fba0  1      OPC=1343  
  nop                      #  19    0x11fba1  1      OPC=1343  
  nop                      #  20    0x11fba2  1      OPC=1343  
  nop                      #  21    0x11fba3  1      OPC=1343  
  nop                      #  22    0x11fba4  1      OPC=1343  
  nop                      #  23    0x11fba5  1      OPC=1343  
  nop                      #  24    0x11fba6  1      OPC=1343  
                                                               
.size localeconv, .-localeconv


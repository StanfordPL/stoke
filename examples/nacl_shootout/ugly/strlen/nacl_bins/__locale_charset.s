  .text
  .globl __locale_charset
  .type __locale_charset, @function

#! file-offset 0x15fae0
#! rip-offset  0x11fae0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.__locale_charset:         #        0x11fae0  0      OPC=0     
  popq %r11                #  1     0x11fae0  2      OPC=1694  
  movl $0x10070ee0, %eax   #  2     0x11fae2  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x11fae7  7      OPC=131   
  nop                      #  4     0x11faee  1      OPC=1343  
  nop                      #  5     0x11faef  1      OPC=1343  
  nop                      #  6     0x11faf0  1      OPC=1343  
  nop                      #  7     0x11faf1  1      OPC=1343  
  addq %r15, %r11          #  8     0x11faf2  3      OPC=72    
  jmpq %r11                #  9     0x11faf5  3      OPC=928   
  nop                      #  10    0x11faf8  1      OPC=1343  
  nop                      #  11    0x11faf9  1      OPC=1343  
  nop                      #  12    0x11fafa  1      OPC=1343  
  nop                      #  13    0x11fafb  1      OPC=1343  
  nop                      #  14    0x11fafc  1      OPC=1343  
  nop                      #  15    0x11fafd  1      OPC=1343  
  nop                      #  16    0x11fafe  1      OPC=1343  
  nop                      #  17    0x11faff  1      OPC=1343  
  nop                      #  18    0x11fb00  1      OPC=1343  
  nop                      #  19    0x11fb01  1      OPC=1343  
  nop                      #  20    0x11fb02  1      OPC=1343  
  nop                      #  21    0x11fb03  1      OPC=1343  
  nop                      #  22    0x11fb04  1      OPC=1343  
  nop                      #  23    0x11fb05  1      OPC=1343  
  nop                      #  24    0x11fb06  1      OPC=1343  
                                                               
.size __locale_charset, .-__locale_charset


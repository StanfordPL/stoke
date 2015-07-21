  .text
  .globl _localeconv_r
  .type _localeconv_r, @function

#! file-offset 0x15fb60
#! rip-offset  0x11fb60
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
._localeconv_r:            #        0x11fb60  0      OPC=0     
  popq %r11                #  1     0x11fb60  2      OPC=1694  
  movl $0x10070e80, %eax   #  2     0x11fb62  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x11fb67  7      OPC=131   
  nop                      #  4     0x11fb6e  1      OPC=1343  
  nop                      #  5     0x11fb6f  1      OPC=1343  
  nop                      #  6     0x11fb70  1      OPC=1343  
  nop                      #  7     0x11fb71  1      OPC=1343  
  addq %r15, %r11          #  8     0x11fb72  3      OPC=72    
  jmpq %r11                #  9     0x11fb75  3      OPC=928   
  nop                      #  10    0x11fb78  1      OPC=1343  
  nop                      #  11    0x11fb79  1      OPC=1343  
  nop                      #  12    0x11fb7a  1      OPC=1343  
  nop                      #  13    0x11fb7b  1      OPC=1343  
  nop                      #  14    0x11fb7c  1      OPC=1343  
  nop                      #  15    0x11fb7d  1      OPC=1343  
  nop                      #  16    0x11fb7e  1      OPC=1343  
  nop                      #  17    0x11fb7f  1      OPC=1343  
  nop                      #  18    0x11fb80  1      OPC=1343  
  nop                      #  19    0x11fb81  1      OPC=1343  
  nop                      #  20    0x11fb82  1      OPC=1343  
  nop                      #  21    0x11fb83  1      OPC=1343  
  nop                      #  22    0x11fb84  1      OPC=1343  
  nop                      #  23    0x11fb85  1      OPC=1343  
  nop                      #  24    0x11fb86  1      OPC=1343  
                                                               
.size _localeconv_r, .-_localeconv_r


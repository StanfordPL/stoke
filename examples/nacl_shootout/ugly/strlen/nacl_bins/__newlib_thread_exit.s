  .text
  .globl __newlib_thread_exit
  .type __newlib_thread_exit, @function

#! file-offset 0x15df60
#! rip-offset  0x11df60
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.__newlib_thread_exit:     #        0x11df60  0      OPC=0     
  popq %r11                #  1     0x11df60  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  2     0x11df62  7      OPC=131   
  nop                      #  3     0x11df69  1      OPC=1343  
  nop                      #  4     0x11df6a  1      OPC=1343  
  nop                      #  5     0x11df6b  1      OPC=1343  
  nop                      #  6     0x11df6c  1      OPC=1343  
  addq %r15, %r11          #  7     0x11df6d  3      OPC=72    
  jmpq %r11                #  8     0x11df70  3      OPC=928   
  nop                      #  9     0x11df73  1      OPC=1343  
  nop                      #  10    0x11df74  1      OPC=1343  
  nop                      #  11    0x11df75  1      OPC=1343  
  nop                      #  12    0x11df76  1      OPC=1343  
  nop                      #  13    0x11df77  1      OPC=1343  
  nop                      #  14    0x11df78  1      OPC=1343  
  nop                      #  15    0x11df79  1      OPC=1343  
  nop                      #  16    0x11df7a  1      OPC=1343  
  nop                      #  17    0x11df7b  1      OPC=1343  
  nop                      #  18    0x11df7c  1      OPC=1343  
  nop                      #  19    0x11df7d  1      OPC=1343  
  nop                      #  20    0x11df7e  1      OPC=1343  
  nop                      #  21    0x11df7f  1      OPC=1343  
  nop                      #  22    0x11df80  1      OPC=1343  
  nop                      #  23    0x11df81  1      OPC=1343  
  nop                      #  24    0x11df82  1      OPC=1343  
  nop                      #  25    0x11df83  1      OPC=1343  
  nop                      #  26    0x11df84  1      OPC=1343  
  nop                      #  27    0x11df85  1      OPC=1343  
  nop                      #  28    0x11df86  1      OPC=1343  
                                                               
.size __newlib_thread_exit, .-__newlib_thread_exit


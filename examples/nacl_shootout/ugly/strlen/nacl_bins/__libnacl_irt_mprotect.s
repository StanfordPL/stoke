  .text
  .globl __libnacl_irt_mprotect
  .type __libnacl_irt_mprotect, @function

#! file-offset 0x158980
#! rip-offset  0x118980
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.__libnacl_irt_mprotect:   #        0x118980  0      OPC=0     
  popq %r11                #  1     0x118980  2      OPC=1694  
  movl $0x26, %eax         #  2     0x118982  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x118987  7      OPC=131   
  nop                      #  4     0x11898e  1      OPC=1343  
  nop                      #  5     0x11898f  1      OPC=1343  
  nop                      #  6     0x118990  1      OPC=1343  
  nop                      #  7     0x118991  1      OPC=1343  
  addq %r15, %r11          #  8     0x118992  3      OPC=72    
  jmpq %r11                #  9     0x118995  3      OPC=928   
  nop                      #  10    0x118998  1      OPC=1343  
  nop                      #  11    0x118999  1      OPC=1343  
  nop                      #  12    0x11899a  1      OPC=1343  
  nop                      #  13    0x11899b  1      OPC=1343  
  nop                      #  14    0x11899c  1      OPC=1343  
  nop                      #  15    0x11899d  1      OPC=1343  
  nop                      #  16    0x11899e  1      OPC=1343  
  nop                      #  17    0x11899f  1      OPC=1343  
  nop                      #  18    0x1189a0  1      OPC=1343  
  nop                      #  19    0x1189a1  1      OPC=1343  
  nop                      #  20    0x1189a2  1      OPC=1343  
  nop                      #  21    0x1189a3  1      OPC=1343  
  nop                      #  22    0x1189a4  1      OPC=1343  
  nop                      #  23    0x1189a5  1      OPC=1343  
  nop                      #  24    0x1189a6  1      OPC=1343  
                                                               
.size __libnacl_irt_mprotect, .-__libnacl_irt_mprotect


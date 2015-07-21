  .text
  .globl _Unwind_GetIP
  .type _Unwind_GetIP, @function

#! file-offset 0x149460
#! rip-offset  0x109460
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Unwind_GetIP:                 #        0x109460  0      OPC=0     
  popq %r11                     #  1     0x109460  2      OPC=1694  
  movl %edi, %edi               #  2     0x109462  2      OPC=1157  
  movl %edi, %edi               #  3     0x109464  2      OPC=1157  
  movl 0x4c(%r15,%rdi,1), %eax  #  4     0x109466  5      OPC=1156  
  andl $0xffffffe0, %r11d       #  5     0x10946b  7      OPC=131   
  nop                           #  6     0x109472  1      OPC=1343  
  nop                           #  7     0x109473  1      OPC=1343  
  nop                           #  8     0x109474  1      OPC=1343  
  nop                           #  9     0x109475  1      OPC=1343  
  addq %r15, %r11               #  10    0x109476  3      OPC=72    
  jmpq %r11                     #  11    0x109479  3      OPC=928   
  nop                           #  12    0x10947c  1      OPC=1343  
  nop                           #  13    0x10947d  1      OPC=1343  
  nop                           #  14    0x10947e  1      OPC=1343  
  nop                           #  15    0x10947f  1      OPC=1343  
  nop                           #  16    0x109480  1      OPC=1343  
  nop                           #  17    0x109481  1      OPC=1343  
  nop                           #  18    0x109482  1      OPC=1343  
  nop                           #  19    0x109483  1      OPC=1343  
  nop                           #  20    0x109484  1      OPC=1343  
  nop                           #  21    0x109485  1      OPC=1343  
  nop                           #  22    0x109486  1      OPC=1343  
                                                                    
.size _Unwind_GetIP, .-_Unwind_GetIP


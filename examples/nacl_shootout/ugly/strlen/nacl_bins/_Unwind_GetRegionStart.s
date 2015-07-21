  .text
  .globl _Unwind_GetRegionStart
  .type _Unwind_GetRegionStart, @function

#! file-offset 0x149500
#! rip-offset  0x109500
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Unwind_GetRegionStart:        #        0x109500  0      OPC=0     
  popq %r11                     #  1     0x109500  2      OPC=1694  
  movl %edi, %edi               #  2     0x109502  2      OPC=1157  
  movl %edi, %edi               #  3     0x109504  2      OPC=1157  
  movl 0x5c(%r15,%rdi,1), %eax  #  4     0x109506  5      OPC=1156  
  andl $0xffffffe0, %r11d       #  5     0x10950b  7      OPC=131   
  nop                           #  6     0x109512  1      OPC=1343  
  nop                           #  7     0x109513  1      OPC=1343  
  nop                           #  8     0x109514  1      OPC=1343  
  nop                           #  9     0x109515  1      OPC=1343  
  addq %r15, %r11               #  10    0x109516  3      OPC=72    
  jmpq %r11                     #  11    0x109519  3      OPC=928   
  nop                           #  12    0x10951c  1      OPC=1343  
  nop                           #  13    0x10951d  1      OPC=1343  
  nop                           #  14    0x10951e  1      OPC=1343  
  nop                           #  15    0x10951f  1      OPC=1343  
  nop                           #  16    0x109520  1      OPC=1343  
  nop                           #  17    0x109521  1      OPC=1343  
  nop                           #  18    0x109522  1      OPC=1343  
  nop                           #  19    0x109523  1      OPC=1343  
  nop                           #  20    0x109524  1      OPC=1343  
  nop                           #  21    0x109525  1      OPC=1343  
  nop                           #  22    0x109526  1      OPC=1343  
                                                                    
.size _Unwind_GetRegionStart, .-_Unwind_GetRegionStart


  .text
  .globl _Unwind_SetIP
  .type _Unwind_SetIP, @function

#! file-offset 0x1494c0
#! rip-offset  0x1094c0
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Unwind_SetIP:                 #        0x1094c0  0      OPC=0     
  popq %r11                     #  1     0x1094c0  2      OPC=1694  
  movl %edi, %edi               #  2     0x1094c2  2      OPC=1157  
  movl %edi, %edi               #  3     0x1094c4  2      OPC=1157  
  movl %esi, 0x4c(%r15,%rdi,1)  #  4     0x1094c6  5      OPC=1136  
  andl $0xffffffe0, %r11d       #  5     0x1094cb  7      OPC=131   
  nop                           #  6     0x1094d2  1      OPC=1343  
  nop                           #  7     0x1094d3  1      OPC=1343  
  nop                           #  8     0x1094d4  1      OPC=1343  
  nop                           #  9     0x1094d5  1      OPC=1343  
  addq %r15, %r11               #  10    0x1094d6  3      OPC=72    
  jmpq %r11                     #  11    0x1094d9  3      OPC=928   
  nop                           #  12    0x1094dc  1      OPC=1343  
  nop                           #  13    0x1094dd  1      OPC=1343  
  nop                           #  14    0x1094de  1      OPC=1343  
  nop                           #  15    0x1094df  1      OPC=1343  
  nop                           #  16    0x1094e0  1      OPC=1343  
  nop                           #  17    0x1094e1  1      OPC=1343  
  nop                           #  18    0x1094e2  1      OPC=1343  
  nop                           #  19    0x1094e3  1      OPC=1343  
  nop                           #  20    0x1094e4  1      OPC=1343  
  nop                           #  21    0x1094e5  1      OPC=1343  
  nop                           #  22    0x1094e6  1      OPC=1343  
                                                                    
.size _Unwind_SetIP, .-_Unwind_SetIP


  .text
  .globl _Unwind_GetCFA
  .type _Unwind_GetCFA, @function

#! file-offset 0x149440
#! rip-offset  0x109440
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Unwind_GetCFA:                #        0x109440  0      OPC=0     
  popq %r11                     #  1     0x109440  2      OPC=1694  
  movl %edi, %edi               #  2     0x109442  2      OPC=1157  
  movl %edi, %edi               #  3     0x109444  2      OPC=1157  
  movl 0x48(%r15,%rdi,1), %eax  #  4     0x109446  5      OPC=1156  
  andl $0xffffffe0, %r11d       #  5     0x10944b  7      OPC=131   
  nop                           #  6     0x109452  1      OPC=1343  
  nop                           #  7     0x109453  1      OPC=1343  
  nop                           #  8     0x109454  1      OPC=1343  
  nop                           #  9     0x109455  1      OPC=1343  
  addq %r15, %r11               #  10    0x109456  3      OPC=72    
  jmpq %r11                     #  11    0x109459  3      OPC=928   
  nop                           #  12    0x10945c  1      OPC=1343  
  nop                           #  13    0x10945d  1      OPC=1343  
  nop                           #  14    0x10945e  1      OPC=1343  
  nop                           #  15    0x10945f  1      OPC=1343  
  nop                           #  16    0x109460  1      OPC=1343  
  nop                           #  17    0x109461  1      OPC=1343  
  nop                           #  18    0x109462  1      OPC=1343  
  nop                           #  19    0x109463  1      OPC=1343  
  nop                           #  20    0x109464  1      OPC=1343  
  nop                           #  21    0x109465  1      OPC=1343  
  nop                           #  22    0x109466  1      OPC=1343  
                                                                    
.size _Unwind_GetCFA, .-_Unwind_GetCFA


  .text
  .globl _wcsrtombs_r
  .type _wcsrtombs_r, @function

#! file-offset 0x182920
#! rip-offset  0x142920
#! capacity    32 bytes

# Text                    #  Line  RIP       Bytes  Opcode    
._wcsrtombs_r:            #        0x142920  0      OPC=0     
  movl %r8d, %r9d         #  1     0x142920  3      OPC=1157  
  movl %edi, %edi         #  2     0x142923  2      OPC=1157  
  movl %ecx, %r8d         #  3     0x142925  3      OPC=1157  
  movl %esi, %esi         #  4     0x142928  2      OPC=1157  
  movl %edx, %edx         #  5     0x14292a  2      OPC=1157  
  movl $0xffffffff, %ecx  #  6     0x14292c  6      OPC=1155  
  jmpq ._wcsnrtombs_r     #  7     0x142932  5      OPC=930   
  nop                     #  8     0x142937  1      OPC=1343  
  nop                     #  9     0x142938  1      OPC=1343  
  nop                     #  10    0x142939  1      OPC=1343  
  nop                     #  11    0x14293a  1      OPC=1343  
  nop                     #  12    0x14293b  1      OPC=1343  
  nop                     #  13    0x14293c  1      OPC=1343  
  nop                     #  14    0x14293d  1      OPC=1343  
  nop                     #  15    0x14293e  1      OPC=1343  
  nop                     #  16    0x14293f  1      OPC=1343  
  nop                     #  17    0x142940  1      OPC=1343  
                                                              
.size _wcsrtombs_r, .-_wcsrtombs_r


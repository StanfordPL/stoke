  .text
  .globl _Unwind_GetTextRelBase
  .type _Unwind_GetTextRelBase, @function

#! file-offset 0x149540
#! rip-offset  0x109540
#! capacity    32 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Unwind_GetTextRelBase:        #        0x109540  0      OPC=0     
  popq %r11                     #  1     0x109540  2      OPC=1694  
  movl %edi, %edi               #  2     0x109542  2      OPC=1157  
  movl %edi, %edi               #  3     0x109544  2      OPC=1157  
  movl 0x54(%r15,%rdi,1), %eax  #  4     0x109546  5      OPC=1156  
  andl $0xffffffe0, %r11d       #  5     0x10954b  7      OPC=131   
  nop                           #  6     0x109552  1      OPC=1343  
  nop                           #  7     0x109553  1      OPC=1343  
  nop                           #  8     0x109554  1      OPC=1343  
  nop                           #  9     0x109555  1      OPC=1343  
  addq %r15, %r11               #  10    0x109556  3      OPC=72    
  jmpq %r11                     #  11    0x109559  3      OPC=928   
  nop                           #  12    0x10955c  1      OPC=1343  
  nop                           #  13    0x10955d  1      OPC=1343  
  nop                           #  14    0x10955e  1      OPC=1343  
  nop                           #  15    0x10955f  1      OPC=1343  
  nop                           #  16    0x109560  1      OPC=1343  
  nop                           #  17    0x109561  1      OPC=1343  
  nop                           #  18    0x109562  1      OPC=1343  
  nop                           #  19    0x109563  1      OPC=1343  
  nop                           #  20    0x109564  1      OPC=1343  
  nop                           #  21    0x109565  1      OPC=1343  
  nop                           #  22    0x109566  1      OPC=1343  
                                                                    
.size _Unwind_GetTextRelBase, .-_Unwind_GetTextRelBase


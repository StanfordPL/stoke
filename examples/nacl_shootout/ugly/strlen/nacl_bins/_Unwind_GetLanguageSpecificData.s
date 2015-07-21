  .text
  .globl _Unwind_GetLanguageSpecificData
  .type _Unwind_GetLanguageSpecificData, @function

#! file-offset 0x1494e0
#! rip-offset  0x1094e0
#! capacity    32 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
._Unwind_GetLanguageSpecificData:  #        0x1094e0  0      OPC=0     
  popq %r11                        #  1     0x1094e0  2      OPC=1694  
  movl %edi, %edi                  #  2     0x1094e2  2      OPC=1157  
  movl %edi, %edi                  #  3     0x1094e4  2      OPC=1157  
  movl 0x50(%r15,%rdi,1), %eax     #  4     0x1094e6  5      OPC=1156  
  andl $0xffffffe0, %r11d          #  5     0x1094eb  7      OPC=131   
  nop                              #  6     0x1094f2  1      OPC=1343  
  nop                              #  7     0x1094f3  1      OPC=1343  
  nop                              #  8     0x1094f4  1      OPC=1343  
  nop                              #  9     0x1094f5  1      OPC=1343  
  addq %r15, %r11                  #  10    0x1094f6  3      OPC=72    
  jmpq %r11                        #  11    0x1094f9  3      OPC=928   
  nop                              #  12    0x1094fc  1      OPC=1343  
  nop                              #  13    0x1094fd  1      OPC=1343  
  nop                              #  14    0x1094fe  1      OPC=1343  
  nop                              #  15    0x1094ff  1      OPC=1343  
  nop                              #  16    0x109500  1      OPC=1343  
  nop                              #  17    0x109501  1      OPC=1343  
  nop                              #  18    0x109502  1      OPC=1343  
  nop                              #  19    0x109503  1      OPC=1343  
  nop                              #  20    0x109504  1      OPC=1343  
  nop                              #  21    0x109505  1      OPC=1343  
  nop                              #  22    0x109506  1      OPC=1343  
                                                                       
.size _Unwind_GetLanguageSpecificData, .-_Unwind_GetLanguageSpecificData


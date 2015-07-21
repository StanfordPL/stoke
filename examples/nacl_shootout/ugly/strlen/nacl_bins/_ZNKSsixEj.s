  .text
  .globl _ZNKSsixEj
  .type _ZNKSsixEj, @function

#! file-offset 0xea000
#! rip-offset  0xaa000
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSsixEj:                #        0xaa000  0      OPC=0     
  popq %r11                 #  1     0xaa000  2      OPC=1694  
  movl %edi, %edi           #  2     0xaa002  2      OPC=1157  
  movl %esi, %eax           #  3     0xaa004  2      OPC=1157  
  movl %edi, %edi           #  4     0xaa006  2      OPC=1157  
  addl (%r15,%rdi,1), %eax  #  5     0xaa008  4      OPC=66    
  andl $0xffffffe0, %r11d   #  6     0xaa00c  7      OPC=131   
  nop                       #  7     0xaa013  1      OPC=1343  
  nop                       #  8     0xaa014  1      OPC=1343  
  nop                       #  9     0xaa015  1      OPC=1343  
  nop                       #  10    0xaa016  1      OPC=1343  
  addq %r15, %r11           #  11    0xaa017  3      OPC=72    
  jmpq %r11                 #  12    0xaa01a  3      OPC=928   
  nop                       #  13    0xaa01d  1      OPC=1343  
  nop                       #  14    0xaa01e  1      OPC=1343  
  nop                       #  15    0xaa01f  1      OPC=1343  
  nop                       #  16    0xaa020  1      OPC=1343  
  nop                       #  17    0xaa021  1      OPC=1343  
  nop                       #  18    0xaa022  1      OPC=1343  
  nop                       #  19    0xaa023  1      OPC=1343  
  nop                       #  20    0xaa024  1      OPC=1343  
  nop                       #  21    0xaa025  1      OPC=1343  
  nop                       #  22    0xaa026  1      OPC=1343  
                                                               
.size _ZNKSsixEj, .-_ZNKSsixEj


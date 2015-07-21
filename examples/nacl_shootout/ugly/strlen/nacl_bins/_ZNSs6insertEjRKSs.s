  .text
  .globl _ZNSs6insertEjRKSs
  .type _ZNSs6insertEjRKSs, @function

#! file-offset 0xef3c0
#! rip-offset  0xaf3c0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNSs6insertEjRKSs:        #        0xaf3c0  0      OPC=0     
  movl %edx, %edx           #  1     0xaf3c0  2      OPC=1157  
  movl %edi, %edi           #  2     0xaf3c2  2      OPC=1157  
  movl %edx, %edx           #  3     0xaf3c4  2      OPC=1157  
  movl (%r15,%rdx,1), %edx  #  4     0xaf3c6  4      OPC=1156  
  leal -0xc(%rdx), %eax     #  5     0xaf3ca  3      OPC=1066  
  movl %eax, %eax           #  6     0xaf3cd  2      OPC=1157  
  movl (%r15,%rax,1), %ecx  #  7     0xaf3cf  4      OPC=1156  
  jmpq ._ZNSs6insertEjPKcj  #  8     0xaf3d3  5      OPC=930   
  nop                       #  9     0xaf3d8  1      OPC=1343  
  nop                       #  10    0xaf3d9  1      OPC=1343  
  nop                       #  11    0xaf3da  1      OPC=1343  
  nop                       #  12    0xaf3db  1      OPC=1343  
  nop                       #  13    0xaf3dc  1      OPC=1343  
  nop                       #  14    0xaf3dd  1      OPC=1343  
  nop                       #  15    0xaf3de  1      OPC=1343  
  nop                       #  16    0xaf3df  1      OPC=1343  
                                                               
.size _ZNSs6insertEjRKSs, .-_ZNSs6insertEjRKSs


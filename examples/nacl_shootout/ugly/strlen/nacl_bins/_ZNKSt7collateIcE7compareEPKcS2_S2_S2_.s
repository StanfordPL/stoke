  .text
  .globl _ZNKSt7collateIcE7compareEPKcS2_S2_S2_
  .type _ZNKSt7collateIcE7compareEPKcS2_S2_S2_, @function

#! file-offset 0xb8920
#! rip-offset  0x78920
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode    
._ZNKSt7collateIcE7compareEPKcS2_S2_S2_:  #        0x78920  0      OPC=0     
  movl %edi, %edi                         #  1     0x78920  2      OPC=1157  
  movl %esi, %esi                         #  2     0x78922  2      OPC=1157  
  movl %edx, %edx                         #  3     0x78924  2      OPC=1157  
  movl %edi, %edi                         #  4     0x78926  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                #  5     0x78928  4      OPC=1156  
  movl %ecx, %ecx                         #  6     0x7892c  2      OPC=1157  
  movl %eax, %eax                         #  7     0x7892e  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %eax             #  8     0x78930  5      OPC=1156  
  andl $0xffffffe0, %eax                  #  9     0x78935  6      OPC=131   
  nop                                     #  10    0x7893b  1      OPC=1343  
  nop                                     #  11    0x7893c  1      OPC=1343  
  nop                                     #  12    0x7893d  1      OPC=1343  
  addq %r15, %rax                         #  13    0x7893e  3      OPC=72    
  jmpq %rax                               #  14    0x78941  2      OPC=928   
  nop                                     #  15    0x78943  1      OPC=1343  
  nop                                     #  16    0x78944  1      OPC=1343  
  nop                                     #  17    0x78945  1      OPC=1343  
                                                                             
.size _ZNKSt7collateIcE7compareEPKcS2_S2_S2_, .-_ZNKSt7collateIcE7compareEPKcS2_S2_S2_


  .text
  .globl _ZNKSt7collateIwE7compareEPKwS2_S2_S2_
  .type _ZNKSt7collateIwE7compareEPKwS2_S2_S2_, @function

#! file-offset 0xf18c0
#! rip-offset  0xb18c0
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode    
._ZNKSt7collateIwE7compareEPKwS2_S2_S2_:  #        0xb18c0  0      OPC=0     
  movl %edi, %edi                         #  1     0xb18c0  2      OPC=1157  
  movl %esi, %esi                         #  2     0xb18c2  2      OPC=1157  
  movl %edx, %edx                         #  3     0xb18c4  2      OPC=1157  
  movl %edi, %edi                         #  4     0xb18c6  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                #  5     0xb18c8  4      OPC=1156  
  movl %ecx, %ecx                         #  6     0xb18cc  2      OPC=1157  
  movl %eax, %eax                         #  7     0xb18ce  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %eax             #  8     0xb18d0  5      OPC=1156  
  andl $0xffffffe0, %eax                  #  9     0xb18d5  6      OPC=131   
  nop                                     #  10    0xb18db  1      OPC=1343  
  nop                                     #  11    0xb18dc  1      OPC=1343  
  nop                                     #  12    0xb18dd  1      OPC=1343  
  addq %r15, %rax                         #  13    0xb18de  3      OPC=72    
  jmpq %rax                               #  14    0xb18e1  2      OPC=928   
  nop                                     #  15    0xb18e3  1      OPC=1343  
  nop                                     #  16    0xb18e4  1      OPC=1343  
  nop                                     #  17    0xb18e5  1      OPC=1343  
                                                                             
.size _ZNKSt7collateIwE7compareEPKwS2_S2_S2_, .-_ZNKSt7collateIwE7compareEPKwS2_S2_S2_


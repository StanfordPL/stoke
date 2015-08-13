  .text
  .globl _ZNKSt7collateIwE7compareEPKwS2_S2_S2_
  .type _ZNKSt7collateIwE7compareEPKwS2_S2_S2_, @function

#! file-offset 0xf1e00
#! rip-offset  0xb1e00
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE7compareEPKwS2_S2_S2_:  #        0xb1e00  0      OPC=<label>         
  movl %edi, %edi                         #  1     0xb1e00  2      OPC=movl_r32_r32    
  movl %esi, %esi                         #  2     0xb1e02  2      OPC=movl_r32_r32    
  movl %edx, %edx                         #  3     0xb1e04  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  4     0xb1e06  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                #  5     0xb1e08  4      OPC=movl_r32_m32    
  movl %ecx, %ecx                         #  6     0xb1e0c  2      OPC=movl_r32_r32    
  movl %eax, %eax                         #  7     0xb1e0e  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax             #  8     0xb1e10  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                  #  9     0xb1e15  6      OPC=andl_r32_imm32  
  nop                                     #  10    0xb1e1b  1      OPC=nop             
  nop                                     #  11    0xb1e1c  1      OPC=nop             
  nop                                     #  12    0xb1e1d  1      OPC=nop             
  addq %r15, %rax                         #  13    0xb1e1e  3      OPC=addq_r64_r64    
  jmpq %rax                               #  14    0xb1e21  2      OPC=jmpq_r64        
  nop                                     #  15    0xb1e23  1      OPC=nop             
  nop                                     #  16    0xb1e24  1      OPC=nop             
  nop                                     #  17    0xb1e25  1      OPC=nop             
                                                                                       
.size _ZNKSt7collateIwE7compareEPKwS2_S2_S2_, .-_ZNKSt7collateIwE7compareEPKwS2_S2_S2_


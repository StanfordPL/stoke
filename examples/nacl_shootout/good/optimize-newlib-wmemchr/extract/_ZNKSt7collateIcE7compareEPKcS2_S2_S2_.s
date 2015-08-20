  .text
  .globl _ZNKSt7collateIcE7compareEPKcS2_S2_S2_
  .type _ZNKSt7collateIcE7compareEPKcS2_S2_S2_, @function

#! file-offset 0xb9160
#! rip-offset  0x79160
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE7compareEPKcS2_S2_S2_:  #        0x79160  0      OPC=<label>         
  movl %edi, %edi                         #  1     0x79160  2      OPC=movl_r32_r32    
  movl %esi, %esi                         #  2     0x79162  2      OPC=movl_r32_r32    
  movl %edx, %edx                         #  3     0x79164  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  4     0x79166  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                #  5     0x79168  4      OPC=movl_r32_m32    
  movl %ecx, %ecx                         #  6     0x7916c  2      OPC=movl_r32_r32    
  movl %eax, %eax                         #  7     0x7916e  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax             #  8     0x79170  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                  #  9     0x79175  6      OPC=andl_r32_imm32  
  nop                                     #  10    0x7917b  1      OPC=nop             
  nop                                     #  11    0x7917c  1      OPC=nop             
  nop                                     #  12    0x7917d  1      OPC=nop             
  addq %r15, %rax                         #  13    0x7917e  3      OPC=addq_r64_r64    
  jmpq %rax                               #  14    0x79181  2      OPC=jmpq_r64        
  nop                                     #  15    0x79183  1      OPC=nop             
  nop                                     #  16    0x79184  1      OPC=nop             
  nop                                     #  17    0x79185  1      OPC=nop             
                                                                                       
.size _ZNKSt7collateIcE7compareEPKcS2_S2_S2_, .-_ZNKSt7collateIcE7compareEPKcS2_S2_S2_


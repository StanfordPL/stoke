  .text
  .globl _ZNKSt7collateIcE7compareEPKcS2_S2_S2_
  .type _ZNKSt7collateIcE7compareEPKcS2_S2_S2_, @function

#! file-offset 0xb8e60
#! rip-offset  0x78e60
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE7compareEPKcS2_S2_S2_:  #        0x78e60  0      OPC=<label>         
  movl %edi, %edi                         #  1     0x78e60  2      OPC=movl_r32_r32    
  movl %esi, %esi                         #  2     0x78e62  2      OPC=movl_r32_r32    
  movl %edx, %edx                         #  3     0x78e64  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  4     0x78e66  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                #  5     0x78e68  4      OPC=movl_r32_m32    
  movl %ecx, %ecx                         #  6     0x78e6c  2      OPC=movl_r32_r32    
  movl %eax, %eax                         #  7     0x78e6e  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax             #  8     0x78e70  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                  #  9     0x78e75  6      OPC=andl_r32_imm32  
  nop                                     #  10    0x78e7b  1      OPC=nop             
  nop                                     #  11    0x78e7c  1      OPC=nop             
  nop                                     #  12    0x78e7d  1      OPC=nop             
  addq %r15, %rax                         #  13    0x78e7e  3      OPC=addq_r64_r64    
  jmpq %rax                               #  14    0x78e81  2      OPC=jmpq_r64        
  nop                                     #  15    0x78e83  1      OPC=nop             
  nop                                     #  16    0x78e84  1      OPC=nop             
  nop                                     #  17    0x78e85  1      OPC=nop             
                                                                                       
.size _ZNKSt7collateIcE7compareEPKcS2_S2_S2_, .-_ZNKSt7collateIcE7compareEPKcS2_S2_S2_


  .text
  .globl _ZNKSt7collateIwE7compareEPKwS2_S2_S2_
  .type _ZNKSt7collateIwE7compareEPKwS2_S2_S2_, @function

#! file-offset 0xf2820
#! rip-offset  0xb2820
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE7compareEPKwS2_S2_S2_:  #        0xb2820  0      OPC=<label>         
  movl %edi, %edi                         #  1     0xb2820  2      OPC=movl_r32_r32    
  movl %esi, %esi                         #  2     0xb2822  2      OPC=movl_r32_r32    
  movl %edx, %edx                         #  3     0xb2824  2      OPC=movl_r32_r32    
  movl %edi, %edi                         #  4     0xb2826  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                #  5     0xb2828  4      OPC=movl_r32_m32    
  movl %ecx, %ecx                         #  6     0xb282c  2      OPC=movl_r32_r32    
  movl %eax, %eax                         #  7     0xb282e  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax             #  8     0xb2830  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                  #  9     0xb2835  6      OPC=andl_r32_imm32  
  nop                                     #  10    0xb283b  1      OPC=nop             
  nop                                     #  11    0xb283c  1      OPC=nop             
  nop                                     #  12    0xb283d  1      OPC=nop             
  addq %r15, %rax                         #  13    0xb283e  3      OPC=addq_r64_r64    
  jmpq %rax                               #  14    0xb2841  2      OPC=jmpq_r64        
  nop                                     #  15    0xb2843  1      OPC=nop             
  nop                                     #  16    0xb2844  1      OPC=nop             
  nop                                     #  17    0xb2845  1      OPC=nop             
                                                                                       
.size _ZNKSt7collateIwE7compareEPKwS2_S2_S2_, .-_ZNKSt7collateIwE7compareEPKwS2_S2_S2_


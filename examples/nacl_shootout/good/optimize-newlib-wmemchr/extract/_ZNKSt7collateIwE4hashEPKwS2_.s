  .text
  .globl _ZNKSt7collateIwE4hashEPKwS2_
  .type _ZNKSt7collateIwE4hashEPKwS2_, @function

#! file-offset 0xf2160
#! rip-offset  0xb2160
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE4hashEPKwS2_:  #        0xb2160  0      OPC=<label>         
  movl %edi, %edi                #  1     0xb2160  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0xb2162  2      OPC=movl_r32_r32    
  movl %edx, %edx                #  3     0xb2164  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xb2166  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax       #  5     0xb2168  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  6     0xb216c  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  7     0xb216e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax         #  8     0xb2173  6      OPC=andl_r32_imm32  
  nop                            #  9     0xb2179  1      OPC=nop             
  nop                            #  10    0xb217a  1      OPC=nop             
  nop                            #  11    0xb217b  1      OPC=nop             
  addq %r15, %rax                #  12    0xb217c  3      OPC=addq_r64_r64    
  jmpq %rax                      #  13    0xb217f  2      OPC=jmpq_r64        
  nop                            #  14    0xb2181  1      OPC=nop             
  nop                            #  15    0xb2182  1      OPC=nop             
  nop                            #  16    0xb2183  1      OPC=nop             
  nop                            #  17    0xb2184  1      OPC=nop             
  nop                            #  18    0xb2185  1      OPC=nop             
                                                                              
.size _ZNKSt7collateIwE4hashEPKwS2_, .-_ZNKSt7collateIwE4hashEPKwS2_


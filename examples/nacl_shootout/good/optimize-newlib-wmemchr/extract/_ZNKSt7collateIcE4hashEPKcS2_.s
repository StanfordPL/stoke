  .text
  .globl _ZNKSt7collateIcE4hashEPKcS2_
  .type _ZNKSt7collateIcE4hashEPKcS2_, @function

#! file-offset 0xb91c0
#! rip-offset  0x791c0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE4hashEPKcS2_:  #        0x791c0  0      OPC=<label>         
  movl %edi, %edi                #  1     0x791c0  2      OPC=movl_r32_r32    
  movl %esi, %esi                #  2     0x791c2  2      OPC=movl_r32_r32    
  movl %edx, %edx                #  3     0x791c4  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0x791c6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax       #  5     0x791c8  4      OPC=movl_r32_m32    
  movl %eax, %eax                #  6     0x791cc  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax   #  7     0x791ce  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax         #  8     0x791d3  6      OPC=andl_r32_imm32  
  nop                            #  9     0x791d9  1      OPC=nop             
  nop                            #  10    0x791da  1      OPC=nop             
  nop                            #  11    0x791db  1      OPC=nop             
  addq %r15, %rax                #  12    0x791dc  3      OPC=addq_r64_r64    
  jmpq %rax                      #  13    0x791df  2      OPC=jmpq_r64        
  nop                            #  14    0x791e1  1      OPC=nop             
  nop                            #  15    0x791e2  1      OPC=nop             
  nop                            #  16    0x791e3  1      OPC=nop             
  nop                            #  17    0x791e4  1      OPC=nop             
  nop                            #  18    0x791e5  1      OPC=nop             
                                                                              
.size _ZNKSt7collateIcE4hashEPKcS2_, .-_ZNKSt7collateIcE4hashEPKcS2_


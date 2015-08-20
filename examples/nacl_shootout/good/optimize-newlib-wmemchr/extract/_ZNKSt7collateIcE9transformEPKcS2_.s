  .text
  .globl _ZNKSt7collateIcE9transformEPKcS2_
  .type _ZNKSt7collateIcE9transformEPKcS2_, @function

#! file-offset 0xb9180
#! rip-offset  0x79180
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE9transformEPKcS2_:  #        0x79180  0      OPC=<label>         
  movl %esi, %esi                     #  1     0x79180  2      OPC=movl_r32_r32    
  pushq %rbx                          #  2     0x79182  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0x79183  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  4     0x79185  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax            #  5     0x79187  4      OPC=movl_r32_m32    
  movl %ebx, %edi                     #  6     0x7918b  2      OPC=movl_r32_r32    
  movl %edx, %edx                     #  7     0x7918d  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                     #  8     0x7918f  2      OPC=movl_r32_r32    
  movl %eax, %eax                     #  9     0x79191  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax         #  10    0x79193  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax              #  11    0x79198  6      OPC=andl_r32_imm32  
  nop                                 #  12    0x7919e  1      OPC=nop             
  nop                                 #  13    0x7919f  1      OPC=nop             
  nop                                 #  14    0x791a0  1      OPC=nop             
  addq %r15, %rax                     #  15    0x791a1  3      OPC=addq_r64_r64    
  callq %rax                          #  16    0x791a4  2      OPC=callq_r64       
  movl %ebx, %eax                     #  17    0x791a6  2      OPC=movl_r32_r32    
  popq %rbx                           #  18    0x791a8  1      OPC=popq_r64_1      
  popq %r11                           #  19    0x791a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0x791ab  7      OPC=andl_r32_imm32  
  nop                                 #  21    0x791b2  1      OPC=nop             
  nop                                 #  22    0x791b3  1      OPC=nop             
  nop                                 #  23    0x791b4  1      OPC=nop             
  nop                                 #  24    0x791b5  1      OPC=nop             
  addq %r15, %r11                     #  25    0x791b6  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0x791b9  3      OPC=jmpq_r64        
  nop                                 #  27    0x791bc  1      OPC=nop             
  nop                                 #  28    0x791bd  1      OPC=nop             
  nop                                 #  29    0x791be  1      OPC=nop             
  nop                                 #  30    0x791bf  1      OPC=nop             
  nop                                 #  31    0x791c0  1      OPC=nop             
  nop                                 #  32    0x791c1  1      OPC=nop             
  nop                                 #  33    0x791c2  1      OPC=nop             
  nop                                 #  34    0x791c3  1      OPC=nop             
  nop                                 #  35    0x791c4  1      OPC=nop             
  nop                                 #  36    0x791c5  1      OPC=nop             
  nop                                 #  37    0x791c6  1      OPC=nop             
  nop                                 #  38    0x791c7  1      OPC=nop             
  nop                                 #  39    0x791c8  1      OPC=nop             
  nop                                 #  40    0x791c9  1      OPC=nop             
  nop                                 #  41    0x791ca  1      OPC=nop             
  nop                                 #  42    0x791cb  1      OPC=nop             
  nop                                 #  43    0x791cc  1      OPC=nop             
                                                                                   
.size _ZNKSt7collateIcE9transformEPKcS2_, .-_ZNKSt7collateIcE9transformEPKcS2_


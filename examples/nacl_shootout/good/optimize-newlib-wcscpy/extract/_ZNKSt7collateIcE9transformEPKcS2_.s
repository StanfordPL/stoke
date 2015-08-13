  .text
  .globl _ZNKSt7collateIcE9transformEPKcS2_
  .type _ZNKSt7collateIcE9transformEPKcS2_, @function

#! file-offset 0xb8e80
#! rip-offset  0x78e80
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE9transformEPKcS2_:  #        0x78e80  0      OPC=<label>         
  movl %esi, %esi                     #  1     0x78e80  2      OPC=movl_r32_r32    
  pushq %rbx                          #  2     0x78e82  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0x78e83  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  4     0x78e85  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax            #  5     0x78e87  4      OPC=movl_r32_m32    
  movl %ebx, %edi                     #  6     0x78e8b  2      OPC=movl_r32_r32    
  movl %edx, %edx                     #  7     0x78e8d  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                     #  8     0x78e8f  2      OPC=movl_r32_r32    
  movl %eax, %eax                     #  9     0x78e91  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax         #  10    0x78e93  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax              #  11    0x78e98  6      OPC=andl_r32_imm32  
  nop                                 #  12    0x78e9e  1      OPC=nop             
  nop                                 #  13    0x78e9f  1      OPC=nop             
  nop                                 #  14    0x78ea0  1      OPC=nop             
  addq %r15, %rax                     #  15    0x78ea1  3      OPC=addq_r64_r64    
  callq %rax                          #  16    0x78ea4  2      OPC=callq_r64       
  movl %ebx, %eax                     #  17    0x78ea6  2      OPC=movl_r32_r32    
  popq %rbx                           #  18    0x78ea8  1      OPC=popq_r64_1      
  popq %r11                           #  19    0x78ea9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0x78eab  7      OPC=andl_r32_imm32  
  nop                                 #  21    0x78eb2  1      OPC=nop             
  nop                                 #  22    0x78eb3  1      OPC=nop             
  nop                                 #  23    0x78eb4  1      OPC=nop             
  nop                                 #  24    0x78eb5  1      OPC=nop             
  addq %r15, %r11                     #  25    0x78eb6  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0x78eb9  3      OPC=jmpq_r64        
  nop                                 #  27    0x78ebc  1      OPC=nop             
  nop                                 #  28    0x78ebd  1      OPC=nop             
  nop                                 #  29    0x78ebe  1      OPC=nop             
  nop                                 #  30    0x78ebf  1      OPC=nop             
  nop                                 #  31    0x78ec0  1      OPC=nop             
  nop                                 #  32    0x78ec1  1      OPC=nop             
  nop                                 #  33    0x78ec2  1      OPC=nop             
  nop                                 #  34    0x78ec3  1      OPC=nop             
  nop                                 #  35    0x78ec4  1      OPC=nop             
  nop                                 #  36    0x78ec5  1      OPC=nop             
  nop                                 #  37    0x78ec6  1      OPC=nop             
  nop                                 #  38    0x78ec7  1      OPC=nop             
  nop                                 #  39    0x78ec8  1      OPC=nop             
  nop                                 #  40    0x78ec9  1      OPC=nop             
  nop                                 #  41    0x78eca  1      OPC=nop             
  nop                                 #  42    0x78ecb  1      OPC=nop             
  nop                                 #  43    0x78ecc  1      OPC=nop             
                                                                                   
.size _ZNKSt7collateIcE9transformEPKcS2_, .-_ZNKSt7collateIcE9transformEPKcS2_


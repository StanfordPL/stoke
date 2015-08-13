  .text
  .globl _ZNKSt7collateIwE9transformEPKwS2_
  .type _ZNKSt7collateIwE9transformEPKwS2_, @function

#! file-offset 0xf1e20
#! rip-offset  0xb1e20
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE9transformEPKwS2_:  #        0xb1e20  0      OPC=<label>         
  movl %esi, %esi                     #  1     0xb1e20  2      OPC=movl_r32_r32    
  pushq %rbx                          #  2     0xb1e22  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0xb1e23  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  4     0xb1e25  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax            #  5     0xb1e27  4      OPC=movl_r32_m32    
  movl %ebx, %edi                     #  6     0xb1e2b  2      OPC=movl_r32_r32    
  movl %edx, %edx                     #  7     0xb1e2d  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                     #  8     0xb1e2f  2      OPC=movl_r32_r32    
  movl %eax, %eax                     #  9     0xb1e31  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax         #  10    0xb1e33  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax              #  11    0xb1e38  6      OPC=andl_r32_imm32  
  nop                                 #  12    0xb1e3e  1      OPC=nop             
  nop                                 #  13    0xb1e3f  1      OPC=nop             
  nop                                 #  14    0xb1e40  1      OPC=nop             
  addq %r15, %rax                     #  15    0xb1e41  3      OPC=addq_r64_r64    
  callq %rax                          #  16    0xb1e44  2      OPC=callq_r64       
  movl %ebx, %eax                     #  17    0xb1e46  2      OPC=movl_r32_r32    
  popq %rbx                           #  18    0xb1e48  1      OPC=popq_r64_1      
  popq %r11                           #  19    0xb1e49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0xb1e4b  7      OPC=andl_r32_imm32  
  nop                                 #  21    0xb1e52  1      OPC=nop             
  nop                                 #  22    0xb1e53  1      OPC=nop             
  nop                                 #  23    0xb1e54  1      OPC=nop             
  nop                                 #  24    0xb1e55  1      OPC=nop             
  addq %r15, %r11                     #  25    0xb1e56  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0xb1e59  3      OPC=jmpq_r64        
  nop                                 #  27    0xb1e5c  1      OPC=nop             
  nop                                 #  28    0xb1e5d  1      OPC=nop             
  nop                                 #  29    0xb1e5e  1      OPC=nop             
  nop                                 #  30    0xb1e5f  1      OPC=nop             
  nop                                 #  31    0xb1e60  1      OPC=nop             
  nop                                 #  32    0xb1e61  1      OPC=nop             
  nop                                 #  33    0xb1e62  1      OPC=nop             
  nop                                 #  34    0xb1e63  1      OPC=nop             
  nop                                 #  35    0xb1e64  1      OPC=nop             
  nop                                 #  36    0xb1e65  1      OPC=nop             
  nop                                 #  37    0xb1e66  1      OPC=nop             
  nop                                 #  38    0xb1e67  1      OPC=nop             
  nop                                 #  39    0xb1e68  1      OPC=nop             
  nop                                 #  40    0xb1e69  1      OPC=nop             
  nop                                 #  41    0xb1e6a  1      OPC=nop             
  nop                                 #  42    0xb1e6b  1      OPC=nop             
  nop                                 #  43    0xb1e6c  1      OPC=nop             
                                                                                   
.size _ZNKSt7collateIwE9transformEPKwS2_, .-_ZNKSt7collateIwE9transformEPKwS2_


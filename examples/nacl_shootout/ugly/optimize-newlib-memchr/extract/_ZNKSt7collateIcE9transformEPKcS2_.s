  .text
  .globl _ZNKSt7collateIcE9transformEPKcS2_
  .type _ZNKSt7collateIcE9transformEPKcS2_, @function

#! file-offset 0xb98a0
#! rip-offset  0x798a0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE9transformEPKcS2_:  #        0x798a0  0      OPC=<label>         
  movl %esi, %esi                     #  1     0x798a0  2      OPC=movl_r32_r32    
  pushq %rbx                          #  2     0x798a2  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0x798a3  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  4     0x798a5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax            #  5     0x798a7  4      OPC=movl_r32_m32    
  movl %ebx, %edi                     #  6     0x798ab  2      OPC=movl_r32_r32    
  movl %edx, %edx                     #  7     0x798ad  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                     #  8     0x798af  2      OPC=movl_r32_r32    
  movl %eax, %eax                     #  9     0x798b1  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax         #  10    0x798b3  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax              #  11    0x798b8  6      OPC=andl_r32_imm32  
  nop                                 #  12    0x798be  1      OPC=nop             
  nop                                 #  13    0x798bf  1      OPC=nop             
  nop                                 #  14    0x798c0  1      OPC=nop             
  addq %r15, %rax                     #  15    0x798c1  3      OPC=addq_r64_r64    
  callq %rax                          #  16    0x798c4  2      OPC=callq_r64       
  movl %ebx, %eax                     #  17    0x798c6  2      OPC=movl_r32_r32    
  popq %rbx                           #  18    0x798c8  1      OPC=popq_r64_1      
  popq %r11                           #  19    0x798c9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0x798cb  7      OPC=andl_r32_imm32  
  nop                                 #  21    0x798d2  1      OPC=nop             
  nop                                 #  22    0x798d3  1      OPC=nop             
  nop                                 #  23    0x798d4  1      OPC=nop             
  nop                                 #  24    0x798d5  1      OPC=nop             
  addq %r15, %r11                     #  25    0x798d6  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0x798d9  3      OPC=jmpq_r64        
  nop                                 #  27    0x798dc  1      OPC=nop             
  nop                                 #  28    0x798dd  1      OPC=nop             
  nop                                 #  29    0x798de  1      OPC=nop             
  nop                                 #  30    0x798df  1      OPC=nop             
  nop                                 #  31    0x798e0  1      OPC=nop             
  nop                                 #  32    0x798e1  1      OPC=nop             
  nop                                 #  33    0x798e2  1      OPC=nop             
  nop                                 #  34    0x798e3  1      OPC=nop             
  nop                                 #  35    0x798e4  1      OPC=nop             
  nop                                 #  36    0x798e5  1      OPC=nop             
  nop                                 #  37    0x798e6  1      OPC=nop             
  nop                                 #  38    0x798e7  1      OPC=nop             
  nop                                 #  39    0x798e8  1      OPC=nop             
  nop                                 #  40    0x798e9  1      OPC=nop             
  nop                                 #  41    0x798ea  1      OPC=nop             
  nop                                 #  42    0x798eb  1      OPC=nop             
  nop                                 #  43    0x798ec  1      OPC=nop             
                                                                                   
.size _ZNKSt7collateIcE9transformEPKcS2_, .-_ZNKSt7collateIcE9transformEPKcS2_


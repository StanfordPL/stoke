  .text
  .globl _ZNKSt7collateIwE9transformEPKwS2_
  .type _ZNKSt7collateIwE9transformEPKwS2_, @function

#! file-offset 0xf2120
#! rip-offset  0xb2120
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE9transformEPKwS2_:  #        0xb2120  0      OPC=<label>         
  movl %esi, %esi                     #  1     0xb2120  2      OPC=movl_r32_r32    
  pushq %rbx                          #  2     0xb2122  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0xb2123  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  4     0xb2125  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax            #  5     0xb2127  4      OPC=movl_r32_m32    
  movl %ebx, %edi                     #  6     0xb212b  2      OPC=movl_r32_r32    
  movl %edx, %edx                     #  7     0xb212d  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                     #  8     0xb212f  2      OPC=movl_r32_r32    
  movl %eax, %eax                     #  9     0xb2131  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax         #  10    0xb2133  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax              #  11    0xb2138  6      OPC=andl_r32_imm32  
  nop                                 #  12    0xb213e  1      OPC=nop             
  nop                                 #  13    0xb213f  1      OPC=nop             
  nop                                 #  14    0xb2140  1      OPC=nop             
  addq %r15, %rax                     #  15    0xb2141  3      OPC=addq_r64_r64    
  callq %rax                          #  16    0xb2144  2      OPC=callq_r64       
  movl %ebx, %eax                     #  17    0xb2146  2      OPC=movl_r32_r32    
  popq %rbx                           #  18    0xb2148  1      OPC=popq_r64_1      
  popq %r11                           #  19    0xb2149  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0xb214b  7      OPC=andl_r32_imm32  
  nop                                 #  21    0xb2152  1      OPC=nop             
  nop                                 #  22    0xb2153  1      OPC=nop             
  nop                                 #  23    0xb2154  1      OPC=nop             
  nop                                 #  24    0xb2155  1      OPC=nop             
  addq %r15, %r11                     #  25    0xb2156  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0xb2159  3      OPC=jmpq_r64        
  nop                                 #  27    0xb215c  1      OPC=nop             
  nop                                 #  28    0xb215d  1      OPC=nop             
  nop                                 #  29    0xb215e  1      OPC=nop             
  nop                                 #  30    0xb215f  1      OPC=nop             
  nop                                 #  31    0xb2160  1      OPC=nop             
  nop                                 #  32    0xb2161  1      OPC=nop             
  nop                                 #  33    0xb2162  1      OPC=nop             
  nop                                 #  34    0xb2163  1      OPC=nop             
  nop                                 #  35    0xb2164  1      OPC=nop             
  nop                                 #  36    0xb2165  1      OPC=nop             
  nop                                 #  37    0xb2166  1      OPC=nop             
  nop                                 #  38    0xb2167  1      OPC=nop             
  nop                                 #  39    0xb2168  1      OPC=nop             
  nop                                 #  40    0xb2169  1      OPC=nop             
  nop                                 #  41    0xb216a  1      OPC=nop             
  nop                                 #  42    0xb216b  1      OPC=nop             
  nop                                 #  43    0xb216c  1      OPC=nop             
                                                                                   
.size _ZNKSt7collateIwE9transformEPKwS2_, .-_ZNKSt7collateIwE9transformEPKwS2_


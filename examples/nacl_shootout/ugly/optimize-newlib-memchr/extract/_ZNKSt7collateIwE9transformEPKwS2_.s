  .text
  .globl _ZNKSt7collateIwE9transformEPKwS2_
  .type _ZNKSt7collateIwE9transformEPKwS2_, @function

#! file-offset 0xf2840
#! rip-offset  0xb2840
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIwE9transformEPKwS2_:  #        0xb2840  0      OPC=<label>         
  movl %esi, %esi                     #  1     0xb2840  2      OPC=movl_r32_r32    
  pushq %rbx                          #  2     0xb2842  1      OPC=pushq_r64_1     
  movl %edi, %ebx                     #  3     0xb2843  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  4     0xb2845  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax            #  5     0xb2847  4      OPC=movl_r32_m32    
  movl %ebx, %edi                     #  6     0xb284b  2      OPC=movl_r32_r32    
  movl %edx, %edx                     #  7     0xb284d  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                     #  8     0xb284f  2      OPC=movl_r32_r32    
  movl %eax, %eax                     #  9     0xb2851  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax         #  10    0xb2853  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax              #  11    0xb2858  6      OPC=andl_r32_imm32  
  nop                                 #  12    0xb285e  1      OPC=nop             
  nop                                 #  13    0xb285f  1      OPC=nop             
  nop                                 #  14    0xb2860  1      OPC=nop             
  addq %r15, %rax                     #  15    0xb2861  3      OPC=addq_r64_r64    
  callq %rax                          #  16    0xb2864  2      OPC=callq_r64       
  movl %ebx, %eax                     #  17    0xb2866  2      OPC=movl_r32_r32    
  popq %rbx                           #  18    0xb2868  1      OPC=popq_r64_1      
  popq %r11                           #  19    0xb2869  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0xb286b  7      OPC=andl_r32_imm32  
  nop                                 #  21    0xb2872  1      OPC=nop             
  nop                                 #  22    0xb2873  1      OPC=nop             
  nop                                 #  23    0xb2874  1      OPC=nop             
  nop                                 #  24    0xb2875  1      OPC=nop             
  addq %r15, %r11                     #  25    0xb2876  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0xb2879  3      OPC=jmpq_r64        
  nop                                 #  27    0xb287c  1      OPC=nop             
  nop                                 #  28    0xb287d  1      OPC=nop             
  nop                                 #  29    0xb287e  1      OPC=nop             
  nop                                 #  30    0xb287f  1      OPC=nop             
  nop                                 #  31    0xb2880  1      OPC=nop             
  nop                                 #  32    0xb2881  1      OPC=nop             
  nop                                 #  33    0xb2882  1      OPC=nop             
  nop                                 #  34    0xb2883  1      OPC=nop             
  nop                                 #  35    0xb2884  1      OPC=nop             
  nop                                 #  36    0xb2885  1      OPC=nop             
  nop                                 #  37    0xb2886  1      OPC=nop             
  nop                                 #  38    0xb2887  1      OPC=nop             
  nop                                 #  39    0xb2888  1      OPC=nop             
  nop                                 #  40    0xb2889  1      OPC=nop             
  nop                                 #  41    0xb288a  1      OPC=nop             
  nop                                 #  42    0xb288b  1      OPC=nop             
  nop                                 #  43    0xb288c  1      OPC=nop             
                                                                                   
.size _ZNKSt7collateIwE9transformEPKwS2_, .-_ZNKSt7collateIwE9transformEPKwS2_


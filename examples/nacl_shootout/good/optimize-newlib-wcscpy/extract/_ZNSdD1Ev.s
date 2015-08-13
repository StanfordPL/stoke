  .text
  .globl _ZNSdD1Ev
  .type _ZNSdD1Ev, @function

#! file-offset 0x13b7a0
#! rip-offset  0xfb7a0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSdD1Ev:                           #        0xfb7a0  0      OPC=<label>         
  movl 0xff42f26(%rip), %ecx          #  1     0xfb7a0  6      OPC=movl_r32_m32    
  movl %edi, %eax                     #  2     0xfb7a6  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edx                #  3     0xfb7a8  3      OPC=leal_r32_m16    
  movl %eax, %eax                     #  4     0xfb7ab  2      OPC=movl_r32_r32    
  movl $0x1003e6a0, 0x8(%r15,%rax,1)  #  5     0xfb7ad  9      OPC=movl_m32_imm32  
  leal 0xc(%rax), %edi                #  6     0xfb7b6  3      OPC=leal_r32_m16    
  movl %edx, %edx                     #  7     0xfb7b9  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  8     0xfb7bb  4      OPC=movl_m32_r32    
  nop                                 #  9     0xfb7bf  1      OPC=nop             
  subl $0xc, %ecx                     #  10    0xfb7c0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                     #  11    0xfb7c3  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx            #  12    0xfb7c5  4      OPC=addl_r32_m32    
  movl 0xff42f01(%rip), %ecx          #  13    0xfb7c9  6      OPC=movl_r32_m32    
  movl %edx, %edx                     #  14    0xfb7cf  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  15    0xfb7d1  4      OPC=movl_m32_r32    
  movl 0xff42ee9(%rip), %edx          #  16    0xfb7d5  6      OPC=movl_r32_m32    
  nop                                 #  17    0xfb7db  1      OPC=nop             
  nop                                 #  18    0xfb7dc  1      OPC=nop             
  nop                                 #  19    0xfb7dd  1      OPC=nop             
  nop                                 #  20    0xfb7de  1      OPC=nop             
  nop                                 #  21    0xfb7df  1      OPC=nop             
  movl 0xff42ee2(%rip), %ecx          #  22    0xfb7e0  6      OPC=movl_r32_m32    
  movl %eax, %eax                     #  23    0xfb7e6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  24    0xfb7e8  4      OPC=movl_m32_r32    
  subl $0xc, %edx                     #  25    0xfb7ec  3      OPC=subl_r32_imm8   
  movl %edx, %edx                     #  26    0xfb7ef  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx            #  27    0xfb7f1  4      OPC=movl_r32_m32    
  movl %eax, %eax                     #  28    0xfb7f5  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)         #  29    0xfb7f7  9      OPC=movl_m32_imm32  
  addl %eax, %edx                     #  30    0xfb800  2      OPC=addl_r32_r32    
  movl %edx, %edx                     #  31    0xfb802  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  32    0xfb804  4      OPC=movl_m32_r32    
  movl %edi, %edi                     #  33    0xfb808  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfb80a  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev            #  35    0xfb812  5      OPC=jmpq_label_1    
  nop                                 #  36    0xfb817  1      OPC=nop             
  nop                                 #  37    0xfb818  1      OPC=nop             
  nop                                 #  38    0xfb819  1      OPC=nop             
  nop                                 #  39    0xfb81a  1      OPC=nop             
  nop                                 #  40    0xfb81b  1      OPC=nop             
  nop                                 #  41    0xfb81c  1      OPC=nop             
  nop                                 #  42    0xfb81d  1      OPC=nop             
  nop                                 #  43    0xfb81e  1      OPC=nop             
  nop                                 #  44    0xfb81f  1      OPC=nop             
                                                                                   
.size _ZNSdD1Ev, .-_ZNSdD1Ev


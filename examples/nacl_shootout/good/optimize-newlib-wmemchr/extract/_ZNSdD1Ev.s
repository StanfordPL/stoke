  .text
  .globl _ZNSdD1Ev
  .type _ZNSdD1Ev, @function

#! file-offset 0x13baa0
#! rip-offset  0xfbaa0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSdD1Ev:                           #        0xfbaa0  0      OPC=<label>         
  movl 0xff42c26(%rip), %ecx          #  1     0xfbaa0  6      OPC=movl_r32_m32    
  movl %edi, %eax                     #  2     0xfbaa6  2      OPC=movl_r32_r32    
  leal 0x8(%rax), %edx                #  3     0xfbaa8  3      OPC=leal_r32_m16    
  movl %eax, %eax                     #  4     0xfbaab  2      OPC=movl_r32_r32    
  movl $0x1003e6a0, 0x8(%r15,%rax,1)  #  5     0xfbaad  9      OPC=movl_m32_imm32  
  leal 0xc(%rax), %edi                #  6     0xfbab6  3      OPC=leal_r32_m16    
  movl %edx, %edx                     #  7     0xfbab9  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  8     0xfbabb  4      OPC=movl_m32_r32    
  nop                                 #  9     0xfbabf  1      OPC=nop             
  subl $0xc, %ecx                     #  10    0xfbac0  3      OPC=subl_r32_imm8   
  movl %ecx, %ecx                     #  11    0xfbac3  2      OPC=movl_r32_r32    
  addl (%r15,%rcx,1), %edx            #  12    0xfbac5  4      OPC=addl_r32_m32    
  movl 0xff42c01(%rip), %ecx          #  13    0xfbac9  6      OPC=movl_r32_m32    
  movl %edx, %edx                     #  14    0xfbacf  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  15    0xfbad1  4      OPC=movl_m32_r32    
  movl 0xff42be9(%rip), %edx          #  16    0xfbad5  6      OPC=movl_r32_m32    
  nop                                 #  17    0xfbadb  1      OPC=nop             
  nop                                 #  18    0xfbadc  1      OPC=nop             
  nop                                 #  19    0xfbadd  1      OPC=nop             
  nop                                 #  20    0xfbade  1      OPC=nop             
  nop                                 #  21    0xfbadf  1      OPC=nop             
  movl 0xff42be2(%rip), %ecx          #  22    0xfbae0  6      OPC=movl_r32_m32    
  movl %eax, %eax                     #  23    0xfbae6  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)            #  24    0xfbae8  4      OPC=movl_m32_r32    
  subl $0xc, %edx                     #  25    0xfbaec  3      OPC=subl_r32_imm8   
  movl %edx, %edx                     #  26    0xfbaef  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx            #  27    0xfbaf1  4      OPC=movl_r32_m32    
  movl %eax, %eax                     #  28    0xfbaf5  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rax,1)         #  29    0xfbaf7  9      OPC=movl_m32_imm32  
  addl %eax, %edx                     #  30    0xfbb00  2      OPC=addl_r32_r32    
  movl %edx, %edx                     #  31    0xfbb02  2      OPC=movl_r32_r32    
  movl %ecx, (%r15,%rdx,1)            #  32    0xfbb04  4      OPC=movl_m32_r32    
  movl %edi, %edi                     #  33    0xfbb08  2      OPC=movl_r32_r32    
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfbb0a  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt8ios_baseD2Ev            #  35    0xfbb12  5      OPC=jmpq_label_1    
  nop                                 #  36    0xfbb17  1      OPC=nop             
  nop                                 #  37    0xfbb18  1      OPC=nop             
  nop                                 #  38    0xfbb19  1      OPC=nop             
  nop                                 #  39    0xfbb1a  1      OPC=nop             
  nop                                 #  40    0xfbb1b  1      OPC=nop             
  nop                                 #  41    0xfbb1c  1      OPC=nop             
  nop                                 #  42    0xfbb1d  1      OPC=nop             
  nop                                 #  43    0xfbb1e  1      OPC=nop             
  nop                                 #  44    0xfbb1f  1      OPC=nop             
                                                                                   
.size _ZNSdD1Ev, .-_ZNSdD1Ev


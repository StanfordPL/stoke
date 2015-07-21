  .text
  .globl _ZNSdD1Ev
  .type _ZNSdD1Ev, @function

#! file-offset 0x13b260
#! rip-offset  0xfb260
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
._ZNSdD1Ev:                           #        0xfb260  0      OPC=0     
  movl 0xff43466(%rip), %ecx          #  1     0xfb260  6      OPC=1156  
  movl %edi, %eax                     #  2     0xfb266  2      OPC=1157  
  leal 0x8(%rax), %edx                #  3     0xfb268  3      OPC=1066  
  movl %eax, %eax                     #  4     0xfb26b  2      OPC=1157  
  movl $0x1003e6a0, 0x8(%r15,%rax,1)  #  5     0xfb26d  9      OPC=1135  
  leal 0xc(%rax), %edi                #  6     0xfb276  3      OPC=1066  
  movl %edx, %edx                     #  7     0xfb279  2      OPC=1157  
  movl %ecx, (%r15,%rdx,1)            #  8     0xfb27b  4      OPC=1136  
  nop                                 #  9     0xfb27f  1      OPC=1343  
  subl $0xc, %ecx                     #  10    0xfb280  3      OPC=2384  
  movl %ecx, %ecx                     #  11    0xfb283  2      OPC=1157  
  addl (%r15,%rcx,1), %edx            #  12    0xfb285  4      OPC=66    
  movl 0xff43441(%rip), %ecx          #  13    0xfb289  6      OPC=1156  
  movl %edx, %edx                     #  14    0xfb28f  2      OPC=1157  
  movl %ecx, (%r15,%rdx,1)            #  15    0xfb291  4      OPC=1136  
  movl 0xff43429(%rip), %edx          #  16    0xfb295  6      OPC=1156  
  nop                                 #  17    0xfb29b  1      OPC=1343  
  nop                                 #  18    0xfb29c  1      OPC=1343  
  nop                                 #  19    0xfb29d  1      OPC=1343  
  nop                                 #  20    0xfb29e  1      OPC=1343  
  nop                                 #  21    0xfb29f  1      OPC=1343  
  movl 0xff43422(%rip), %ecx          #  22    0xfb2a0  6      OPC=1156  
  movl %eax, %eax                     #  23    0xfb2a6  2      OPC=1157  
  movl %edx, (%r15,%rax,1)            #  24    0xfb2a8  4      OPC=1136  
  subl $0xc, %edx                     #  25    0xfb2ac  3      OPC=2384  
  movl %edx, %edx                     #  26    0xfb2af  2      OPC=1157  
  movl (%r15,%rdx,1), %edx            #  27    0xfb2b1  4      OPC=1156  
  movl %eax, %eax                     #  28    0xfb2b5  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rax,1)         #  29    0xfb2b7  9      OPC=1135  
  addl %eax, %edx                     #  30    0xfb2c0  2      OPC=67    
  movl %edx, %edx                     #  31    0xfb2c2  2      OPC=1157  
  movl %ecx, (%r15,%rdx,1)            #  32    0xfb2c4  4      OPC=1136  
  movl %edi, %edi                     #  33    0xfb2c8  2      OPC=1157  
  movl $0x1003a758, (%r15,%rdi,1)     #  34    0xfb2ca  8      OPC=1135  
  jmpq ._ZNSt8ios_baseD2Ev            #  35    0xfb2d2  5      OPC=930   
  nop                                 #  36    0xfb2d7  1      OPC=1343  
  nop                                 #  37    0xfb2d8  1      OPC=1343  
  nop                                 #  38    0xfb2d9  1      OPC=1343  
  nop                                 #  39    0xfb2da  1      OPC=1343  
  nop                                 #  40    0xfb2db  1      OPC=1343  
  nop                                 #  41    0xfb2dc  1      OPC=1343  
  nop                                 #  42    0xfb2dd  1      OPC=1343  
  nop                                 #  43    0xfb2de  1      OPC=1343  
  nop                                 #  44    0xfb2df  1      OPC=1343  
                                                                         
.size _ZNSdD1Ev, .-_ZNSdD1Ev


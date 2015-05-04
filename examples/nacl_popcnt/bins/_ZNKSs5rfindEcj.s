  .text
  .globl _ZNKSs5rfindEcj
  .type _ZNKSs5rfindEcj, @function

#! file-offset 0x446e0
#! rip-offset  0x446e0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindEcj:           #        0x446e0  0      
  movl %edi, %edi           #  1     0x446e0  2      
  movl %edi, %edi           #  2     0x446e2  2      
  movl (%r15,%rdi,1), %ecx  #  3     0x446e4  4      
  leal -0xc(%rcx), %eax     #  4     0x446e8  3      
  movl %eax, %eax           #  5     0x446eb  2      
  movl (%r15,%rax,1), %eax  #  6     0x446ed  4      
  testl %eax, %eax          #  7     0x446f1  2      
  je .L_44740               #  8     0x446f3  6      
  subl $0x1, %eax           #  9     0x446f9  3      
  cmpl %eax, %edx           #  10    0x446fc  2      
  cmoval %eax, %edx         #  11    0x446fe  3      
  leal 0x1(%rdx), %eax      #  12    0x44701  3      
  addl %ecx, %edx           #  13    0x44704  2      
  nop                       #  14    0x44706  1      
  nop                       #  15    0x44707  1      
.L_44720:                   #        0x44708  0      
  testl %eax, %eax          #  16    0x44708  2      
  je .L_44740               #  17    0x4470a  6      
  movl %edx, %ecx           #  18    0x44710  2      
  subl $0x1, %eax           #  19    0x44712  3      
  subl $0x1, %edx           #  20    0x44715  3      
  movl %ecx, %ecx           #  21    0x44718  2      
  cmpb (%r15,%rcx,1), %sil  #  22    0x4471a  4      
  jne .L_44720              #  23    0x4471e  6      
  popq %r11                 #  24    0x44724  3      
  andl $0xffffffe0, %r11d   #  25    0x44727  7      
  addq %r15, %r11           #  26    0x4472e  3      
  jmpq %r11                 #  27    0x44731  3      
.L_44740:                   #        0x44734  0      
  movl $0xffffffff, %eax    #  28    0x44734  5      
  popq %r11                 #  29    0x44739  3      
  andl $0xffffffe0, %r11d   #  30    0x4473c  7      
  addq %r15, %r11           #  31    0x44743  3      
  jmpq %r11                 #  32    0x44746  3      
  nop                       #  33    0x44749  1      
  nop                       #  34    0x4474a  1      
  nop                       #  35    0x4474b  1      
  nop                       #  36    0x4474c  1      
  nop                       #  37    0x4474d  1      
  nop                       #  38    0x4474e  1      
  nop                       #  39    0x4474f  1      
  nop                       #  40    0x44750  1      
  nop                       #  41    0x44751  1      
  nop                       #  42    0x44752  1      
  nop                       #  43    0x44753  1      
  nop                       #  44    0x44754  1      
  nop                       #  45    0x44755  1      
  nop                       #  46    0x44756  1      
  nop                       #  47    0x44757  1      
                                                     
.size _ZNKSs5rfindEcj, .-_ZNKSs5rfindEcj


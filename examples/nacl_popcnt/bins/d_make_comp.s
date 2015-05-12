  .text
  .globl d_make_comp
  .type d_make_comp, @function

#! file-offset 0x4fa00
#! rip-offset  0x4fa00
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
.d_make_comp:                         #        0x4fa00  0      
  cmpl $0x3a, %esi                    #  1     0x4fa00  3      
  movl %edi, %edi                     #  2     0x4fa03  2      
  movl %edx, %edx                     #  3     0x4fa05  2      
  movl %ecx, %ecx                     #  4     0x4fa07  2      
  jbe .L_4fa60                        #  5     0x4fa09  6      
  nop                                 #  6     0x4fa0f  1      
  nop                                 #  7     0x4fa10  1      
.L_4fa20:                             #        0x4fa11  0      
  xorl %eax, %eax                     #  8     0x4fa11  2      
  nop                                 #  9     0x4fa13  1      
  nop                                 #  10    0x4fa14  1      
.L_4fa40:                             #        0x4fa15  0      
  popq %r11                           #  11    0x4fa15  3      
  andl $0xffffffe0, %r11d             #  12    0x4fa18  7      
  addq %r15, %r11                     #  13    0x4fa1f  3      
  jmpq %r11                           #  14    0x4fa22  3      
  nop                                 #  15    0x4fa25  1      
  nop                                 #  16    0x4fa26  1      
.L_4fa60:                             #        0x4fa27  0      
  movl %esi, %eax                     #  17    0x4fa27  2      
  movl %eax, %eax                     #  18    0x4fa29  2      
  movq 0x10021520(%r15,%rax,8), %rax  #  19    0x4fa2b  8      
  andl $0xffffffe0, %eax              #  20    0x4fa33  5      
  addq %r15, %rax                     #  21    0x4fa38  3      
  jmpq %rax                           #  22    0x4fa3b  2      
  nop                                 #  23    0x4fa3d  1      
  testq %rcx, %rcx                    #  24    0x4fa3e  3      
  je .L_4fa20                         #  25    0x4fa41  6      
  nop                                 #  26    0x4fa47  1      
  nop                                 #  27    0x4fa48  1      
  movl %edi, %edi                     #  28    0x4fa49  2      
  movl 0x14(%r15,%rdi,1), %r8d        #  29    0x4fa4b  5      
  movl %edi, %edi                     #  30    0x4fa50  2      
  cmpl 0x18(%r15,%rdi,1), %r8d        #  31    0x4fa52  5      
  jge .L_4fa20                        #  32    0x4fa57  6      
  nop                                 #  33    0x4fa5d  1      
.L_4fac0:                             #        0x4fa5e  0      
  leal (%r8,%r8,2), %eax              #  34    0x4fa5e  4      
  addl $0x1, %r8d                     #  35    0x4fa62  4      
  movl %edi, %edi                     #  36    0x4fa66  2      
  movl %r8d, 0x14(%r15,%rdi,1)        #  37    0x4fa68  5      
  shll $0x2, %eax                     #  38    0x4fa6d  3      
  movl %edi, %edi                     #  39    0x4fa70  2      
  addl 0x10(%r15,%rdi,1), %eax        #  40    0x4fa72  5      
  testq %rax, %rax                    #  41    0x4fa77  3      
  nop                                 #  42    0x4fa7a  1      
  je .L_4fa40                         #  43    0x4fa7b  6      
  movl %eax, %eax                     #  44    0x4fa81  2      
  movl %esi, (%r15,%rax,1)            #  45    0x4fa83  4      
  movl %eax, %eax                     #  46    0x4fa87  2      
  movl %edx, 0x4(%r15,%rax,1)         #  47    0x4fa89  5      
  movl %eax, %eax                     #  48    0x4fa8e  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  49    0x4fa90  5      
  popq %r11                           #  50    0x4fa95  3      
  nop                                 #  51    0x4fa98  1      
  andl $0xffffffe0, %r11d             #  52    0x4fa99  7      
  addq %r15, %r11                     #  53    0x4faa0  3      
  jmpq %r11                           #  54    0x4faa3  3      
  nop                                 #  55    0x4faa6  1      
  nop                                 #  56    0x4faa7  1      
  testq %rcx, %rcx                    #  57    0x4faa8  3      
  je .L_4fa20                         #  58    0x4faab  6      
  nop                                 #  59    0x4fab1  1      
  nop                                 #  60    0x4fab2  1      
  testq %rdx, %rdx                    #  61    0x4fab3  3      
  je .L_4fa20                         #  62    0x4fab6  6      
  movl %edi, %edi                     #  63    0x4fabc  2      
  movl 0x14(%r15,%rdi,1), %r8d        #  64    0x4fabe  5      
  movl %edi, %edi                     #  65    0x4fac3  2      
  cmpl 0x18(%r15,%rdi,1), %r8d        #  66    0x4fac5  5      
  jge .L_4fa20                        #  67    0x4faca  6      
  nop                                 #  68    0x4fad0  1      
  jmpq .L_4fac0                       #  69    0x4fad1  5      
  nop                                 #  70    0x4fad6  1      
  nop                                 #  71    0x4fad7  1      
                                                               
.size d_make_comp, .-d_make_comp


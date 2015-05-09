  .text
  .globl d_make_comp
  .type d_make_comp, @function

#! file-offset 0x4f9e0
#! rip-offset  0x4f9e0
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
.d_make_comp:                         #        0x4f9e0  0      
  cmpl $0x3a, %esi                    #  1     0x4f9e0  3      
  movl %edi, %edi                     #  2     0x4f9e3  2      
  movl %edx, %edx                     #  3     0x4f9e5  2      
  movl %ecx, %ecx                     #  4     0x4f9e7  2      
  jbe .L_4fa40                        #  5     0x4f9e9  6      
  nop                                 #  6     0x4f9ef  1      
  nop                                 #  7     0x4f9f0  1      
.L_4fa00:                             #        0x4f9f1  0      
  xorl %eax, %eax                     #  8     0x4f9f1  2      
  nop                                 #  9     0x4f9f3  1      
  nop                                 #  10    0x4f9f4  1      
.L_4fa20:                             #        0x4f9f5  0      
  popq %r11                           #  11    0x4f9f5  3      
  andl $0xffffffe0, %r11d             #  12    0x4f9f8  7      
  addq %r15, %r11                     #  13    0x4f9ff  3      
  jmpq %r11                           #  14    0x4fa02  3      
  nop                                 #  15    0x4fa05  1      
  nop                                 #  16    0x4fa06  1      
.L_4fa40:                             #        0x4fa07  0      
  movl %esi, %eax                     #  17    0x4fa07  2      
  movl %eax, %eax                     #  18    0x4fa09  2      
  movq 0x10021520(%r15,%rax,8), %rax  #  19    0x4fa0b  8      
  andl $0xffffffe0, %eax              #  20    0x4fa13  5      
  addq %r15, %rax                     #  21    0x4fa18  3      
  jmpq %rax                           #  22    0x4fa1b  2      
  nop                                 #  23    0x4fa1d  1      
  testq %rcx, %rcx                    #  24    0x4fa1e  3      
  je .L_4fa00                         #  25    0x4fa21  6      
  nop                                 #  26    0x4fa27  1      
  nop                                 #  27    0x4fa28  1      
  movl %edi, %edi                     #  28    0x4fa29  2      
  movl 0x14(%r15,%rdi,1), %r8d        #  29    0x4fa2b  5      
  movl %edi, %edi                     #  30    0x4fa30  2      
  cmpl 0x18(%r15,%rdi,1), %r8d        #  31    0x4fa32  5      
  jge .L_4fa00                        #  32    0x4fa37  6      
  nop                                 #  33    0x4fa3d  1      
.L_4faa0:                             #        0x4fa3e  0      
  leal (%r8,%r8,2), %eax              #  34    0x4fa3e  4      
  addl $0x1, %r8d                     #  35    0x4fa42  4      
  movl %edi, %edi                     #  36    0x4fa46  2      
  movl %r8d, 0x14(%r15,%rdi,1)        #  37    0x4fa48  5      
  shll $0x2, %eax                     #  38    0x4fa4d  3      
  movl %edi, %edi                     #  39    0x4fa50  2      
  addl 0x10(%r15,%rdi,1), %eax        #  40    0x4fa52  5      
  testq %rax, %rax                    #  41    0x4fa57  3      
  nop                                 #  42    0x4fa5a  1      
  je .L_4fa20                         #  43    0x4fa5b  6      
  movl %eax, %eax                     #  44    0x4fa61  2      
  movl %esi, (%r15,%rax,1)            #  45    0x4fa63  4      
  movl %eax, %eax                     #  46    0x4fa67  2      
  movl %edx, 0x4(%r15,%rax,1)         #  47    0x4fa69  5      
  movl %eax, %eax                     #  48    0x4fa6e  2      
  movl %ecx, 0x8(%r15,%rax,1)         #  49    0x4fa70  5      
  popq %r11                           #  50    0x4fa75  3      
  nop                                 #  51    0x4fa78  1      
  andl $0xffffffe0, %r11d             #  52    0x4fa79  7      
  addq %r15, %r11                     #  53    0x4fa80  3      
  jmpq %r11                           #  54    0x4fa83  3      
  nop                                 #  55    0x4fa86  1      
  nop                                 #  56    0x4fa87  1      
  testq %rcx, %rcx                    #  57    0x4fa88  3      
  je .L_4fa00                         #  58    0x4fa8b  6      
  nop                                 #  59    0x4fa91  1      
  nop                                 #  60    0x4fa92  1      
  testq %rdx, %rdx                    #  61    0x4fa93  3      
  je .L_4fa00                         #  62    0x4fa96  6      
  movl %edi, %edi                     #  63    0x4fa9c  2      
  movl 0x14(%r15,%rdi,1), %r8d        #  64    0x4fa9e  5      
  movl %edi, %edi                     #  65    0x4faa3  2      
  cmpl 0x18(%r15,%rdi,1), %r8d        #  66    0x4faa5  5      
  jge .L_4fa00                        #  67    0x4faaa  6      
  nop                                 #  68    0x4fab0  1      
  jmpq .L_4faa0                       #  69    0x4fab1  5      
  nop                                 #  70    0x4fab6  1      
  nop                                 #  71    0x4fab7  1      
                                                               
.size d_make_comp, .-d_make_comp


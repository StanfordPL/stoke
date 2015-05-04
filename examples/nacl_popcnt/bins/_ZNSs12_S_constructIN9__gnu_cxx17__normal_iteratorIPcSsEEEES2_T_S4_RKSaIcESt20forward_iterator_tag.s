  .text
  .globl _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47d80
#! rip-offset  0x47d80
#! capacity    224 bytes

# Text                                                                                                #  Line  RIP      Bytes  
._ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag:  #        0x47d80  0      
  movq %r12, -0x18(%rsp)                                                                              #  1     0x47d80  5      
  movq %r13, -0x10(%rsp)                                                                              #  2     0x47d85  5      
  movl %esi, %r12d                                                                                    #  3     0x47d8a  3      
  movl %edi, %r13d                                                                                    #  4     0x47d8d  3      
  movq %rbx, -0x20(%rsp)                                                                              #  5     0x47d90  5      
  movq %r14, -0x8(%rsp)                                                                               #  6     0x47d95  5      
  movl $0x10031dac, %ebx                                                                              #  7     0x47d9a  5      
  nop                                                                                                 #  8     0x47d9f  1      
  subl $0x28, %esp                                                                                    #  9     0x47da0  3      
  addq %r15, %rsp                                                                                     #  10    0x47da3  3      
  cmpl %r13d, %r12d                                                                                   #  11    0x47da6  3      
  movl %edx, %edx                                                                                     #  12    0x47da9  2      
  movl %ebx, %ebx                                                                                     #  13    0x47dab  2      
  je .L_47e00                                                                                         #  14    0x47dad  6      
  subl %r13d, %r12d                                                                                   #  15    0x47db3  3      
  xorl %esi, %esi                                                                                     #  16    0x47db6  2      
  movl %r12d, %edi                                                                                    #  17    0x47db8  3      
  nop                                                                                                 #  18    0x47dbb  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                                                               #  19    0x47dbc  5      
  cmpl $0x1, %r12d                                                                                    #  20    0x47dc1  4      
  movl %eax, %r14d                                                                                    #  21    0x47dc5  3      
  leal 0xc(%r14), %ebx                                                                                #  22    0x47dc8  4      
  je .L_47e40                                                                                         #  23    0x47dcc  6      
  movl %r12d, %edx                                                                                    #  24    0x47dd2  3      
  movl %r13d, %esi                                                                                    #  25    0x47dd5  3      
  movl %ebx, %edi                                                                                     #  26    0x47dd8  2      
  nop                                                                                                 #  27    0x47dda  1      
  callq .memcpy                                                                                       #  28    0x47ddb  5      
.L_47de0:                                                                                             #        0x47de0  0      
  movl %r14d, %r14d                                                                                   #  29    0x47de0  3      
  movl %r12d, (%r15,%r14,1)                                                                           #  30    0x47de3  4      
  addl %ebx, %r12d                                                                                    #  31    0x47de7  3      
  movl %r14d, %r14d                                                                                   #  32    0x47dea  3      
  movl $0x0, 0x8(%r15,%r14,1)                                                                         #  33    0x47ded  9      
  movl %r12d, %r12d                                                                                   #  34    0x47df6  3      
  movb $0x0, (%r15,%r12,1)                                                                            #  35    0x47df9  5      
  xchgw %ax, %ax                                                                                      #  36    0x47dfe  3      
.L_47e00:                                                                                             #        0x47e01  0      
  movl %ebx, %eax                                                                                     #  37    0x47e01  2      
  movq 0x10(%rsp), %r12                                                                               #  38    0x47e03  5      
  movq 0x8(%rsp), %rbx                                                                                #  39    0x47e08  5      
  movq 0x18(%rsp), %r13                                                                               #  40    0x47e0d  5      
  movq 0x20(%rsp), %r14                                                                               #  41    0x47e12  5      
  addl $0x28, %esp                                                                                    #  42    0x47e17  3      
  addq %r15, %rsp                                                                                     #  43    0x47e1a  3      
  popq %r11                                                                                           #  44    0x47e1d  3      
  xchgw %ax, %ax                                                                                      #  45    0x47e20  3      
  andl $0xffffffe0, %r11d                                                                             #  46    0x47e23  7      
  addq %r15, %r11                                                                                     #  47    0x47e2a  3      
  jmpq %r11                                                                                           #  48    0x47e2d  3      
  nop                                                                                                 #  49    0x47e30  1      
  nop                                                                                                 #  50    0x47e31  1      
.L_47e40:                                                                                             #        0x47e32  0      
  movl %r13d, %r13d                                                                                   #  51    0x47e32  3      
  movzbl (%r15,%r13,1), %eax                                                                          #  52    0x47e35  5      
  movl %ebx, %ebx                                                                                     #  53    0x47e3a  2      
  movb %al, (%r15,%rbx,1)                                                                             #  54    0x47e3c  4      
  jmpq .L_47de0                                                                                       #  55    0x47e40  5      
  nop                                                                                                 #  56    0x47e45  1      
  nop                                                                                                 #  57    0x47e46  1      
  nop                                                                                                 #  58    0x47e47  1      
  nop                                                                                                 #  59    0x47e48  1      
  nop                                                                                                 #  60    0x47e49  1      
  nop                                                                                                 #  61    0x47e4a  1      
  nop                                                                                                 #  62    0x47e4b  1      
  nop                                                                                                 #  63    0x47e4c  1      
  nop                                                                                                 #  64    0x47e4d  1      
  nop                                                                                                 #  65    0x47e4e  1      
  nop                                                                                                 #  66    0x47e4f  1      
  nop                                                                                                 #  67    0x47e50  1      
  nop                                                                                                 #  68    0x47e51  1      
  nop                                                                                                 #  69    0x47e52  1      
  nop                                                                                                 #  70    0x47e53  1      
  nop                                                                                                 #  71    0x47e54  1      
                                                                                                                               
.size _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag


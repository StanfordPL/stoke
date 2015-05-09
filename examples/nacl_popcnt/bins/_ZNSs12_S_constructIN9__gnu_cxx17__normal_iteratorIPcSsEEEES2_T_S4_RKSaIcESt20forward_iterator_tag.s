  .text
  .globl _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47ce0
#! rip-offset  0x47ce0
#! capacity    224 bytes

# Text                                                                                                #  Line  RIP      Bytes  
._ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag:  #        0x47ce0  0      
  movq %r12, -0x18(%rsp)                                                                              #  1     0x47ce0  5      
  movq %r13, -0x10(%rsp)                                                                              #  2     0x47ce5  5      
  movl %esi, %r12d                                                                                    #  3     0x47cea  3      
  movl %edi, %r13d                                                                                    #  4     0x47ced  3      
  movq %rbx, -0x20(%rsp)                                                                              #  5     0x47cf0  5      
  movq %r14, -0x8(%rsp)                                                                               #  6     0x47cf5  5      
  movl $0x10031dac, %ebx                                                                              #  7     0x47cfa  5      
  nop                                                                                                 #  8     0x47cff  1      
  subl $0x28, %esp                                                                                    #  9     0x47d00  3      
  addq %r15, %rsp                                                                                     #  10    0x47d03  3      
  cmpl %r13d, %r12d                                                                                   #  11    0x47d06  3      
  movl %edx, %edx                                                                                     #  12    0x47d09  2      
  movl %ebx, %ebx                                                                                     #  13    0x47d0b  2      
  je .L_47d60                                                                                         #  14    0x47d0d  6      
  subl %r13d, %r12d                                                                                   #  15    0x47d13  3      
  xorl %esi, %esi                                                                                     #  16    0x47d16  2      
  movl %r12d, %edi                                                                                    #  17    0x47d18  3      
  nop                                                                                                 #  18    0x47d1b  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                                                               #  19    0x47d1c  5      
  cmpl $0x1, %r12d                                                                                    #  20    0x47d21  4      
  movl %eax, %r14d                                                                                    #  21    0x47d25  3      
  leal 0xc(%r14), %ebx                                                                                #  22    0x47d28  4      
  je .L_47da0                                                                                         #  23    0x47d2c  6      
  movl %r12d, %edx                                                                                    #  24    0x47d32  3      
  movl %r13d, %esi                                                                                    #  25    0x47d35  3      
  movl %ebx, %edi                                                                                     #  26    0x47d38  2      
  nop                                                                                                 #  27    0x47d3a  1      
  callq .memcpy                                                                                       #  28    0x47d3b  5      
.L_47d40:                                                                                             #        0x47d40  0      
  movl %r14d, %r14d                                                                                   #  29    0x47d40  3      
  movl %r12d, (%r15,%r14,1)                                                                           #  30    0x47d43  4      
  addl %ebx, %r12d                                                                                    #  31    0x47d47  3      
  movl %r14d, %r14d                                                                                   #  32    0x47d4a  3      
  movl $0x0, 0x8(%r15,%r14,1)                                                                         #  33    0x47d4d  9      
  movl %r12d, %r12d                                                                                   #  34    0x47d56  3      
  movb $0x0, (%r15,%r12,1)                                                                            #  35    0x47d59  5      
  xchgw %ax, %ax                                                                                      #  36    0x47d5e  3      
.L_47d60:                                                                                             #        0x47d61  0      
  movl %ebx, %eax                                                                                     #  37    0x47d61  2      
  movq 0x10(%rsp), %r12                                                                               #  38    0x47d63  5      
  movq 0x8(%rsp), %rbx                                                                                #  39    0x47d68  5      
  movq 0x18(%rsp), %r13                                                                               #  40    0x47d6d  5      
  movq 0x20(%rsp), %r14                                                                               #  41    0x47d72  5      
  addl $0x28, %esp                                                                                    #  42    0x47d77  3      
  addq %r15, %rsp                                                                                     #  43    0x47d7a  3      
  popq %r11                                                                                           #  44    0x47d7d  3      
  xchgw %ax, %ax                                                                                      #  45    0x47d80  3      
  andl $0xffffffe0, %r11d                                                                             #  46    0x47d83  7      
  addq %r15, %r11                                                                                     #  47    0x47d8a  3      
  jmpq %r11                                                                                           #  48    0x47d8d  3      
  nop                                                                                                 #  49    0x47d90  1      
  nop                                                                                                 #  50    0x47d91  1      
.L_47da0:                                                                                             #        0x47d92  0      
  movl %r13d, %r13d                                                                                   #  51    0x47d92  3      
  movzbl (%r15,%r13,1), %eax                                                                          #  52    0x47d95  5      
  movl %ebx, %ebx                                                                                     #  53    0x47d9a  2      
  movb %al, (%r15,%rbx,1)                                                                             #  54    0x47d9c  4      
  jmpq .L_47d40                                                                                       #  55    0x47da0  5      
  nop                                                                                                 #  56    0x47da5  1      
  nop                                                                                                 #  57    0x47da6  1      
  nop                                                                                                 #  58    0x47da7  1      
  nop                                                                                                 #  59    0x47da8  1      
  nop                                                                                                 #  60    0x47da9  1      
  nop                                                                                                 #  61    0x47daa  1      
  nop                                                                                                 #  62    0x47dab  1      
  nop                                                                                                 #  63    0x47dac  1      
  nop                                                                                                 #  64    0x47dad  1      
  nop                                                                                                 #  65    0x47dae  1      
  nop                                                                                                 #  66    0x47daf  1      
  nop                                                                                                 #  67    0x47db0  1      
  nop                                                                                                 #  68    0x47db1  1      
  nop                                                                                                 #  69    0x47db2  1      
  nop                                                                                                 #  70    0x47db3  1      
  nop                                                                                                 #  71    0x47db4  1      
                                                                                                                               
.size _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag


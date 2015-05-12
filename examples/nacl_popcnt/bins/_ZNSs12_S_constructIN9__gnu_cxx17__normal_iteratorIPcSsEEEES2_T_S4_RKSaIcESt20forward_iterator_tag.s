  .text
  .globl _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47d00
#! rip-offset  0x47d00
#! capacity    224 bytes

# Text                                                                                                #  Line  RIP      Bytes  
._ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag:  #        0x47d00  0      
  movq %r12, -0x18(%rsp)                                                                              #  1     0x47d00  5      
  movq %r13, -0x10(%rsp)                                                                              #  2     0x47d05  5      
  movl %esi, %r12d                                                                                    #  3     0x47d0a  3      
  movl %edi, %r13d                                                                                    #  4     0x47d0d  3      
  movq %rbx, -0x20(%rsp)                                                                              #  5     0x47d10  5      
  movq %r14, -0x8(%rsp)                                                                               #  6     0x47d15  5      
  movl $0x10031dac, %ebx                                                                              #  7     0x47d1a  5      
  nop                                                                                                 #  8     0x47d1f  1      
  subl $0x28, %esp                                                                                    #  9     0x47d20  3      
  addq %r15, %rsp                                                                                     #  10    0x47d23  3      
  cmpl %r13d, %r12d                                                                                   #  11    0x47d26  3      
  movl %edx, %edx                                                                                     #  12    0x47d29  2      
  movl %ebx, %ebx                                                                                     #  13    0x47d2b  2      
  je .L_47d80                                                                                         #  14    0x47d2d  6      
  subl %r13d, %r12d                                                                                   #  15    0x47d33  3      
  xorl %esi, %esi                                                                                     #  16    0x47d36  2      
  movl %r12d, %edi                                                                                    #  17    0x47d38  3      
  nop                                                                                                 #  18    0x47d3b  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                                                               #  19    0x47d3c  5      
  cmpl $0x1, %r12d                                                                                    #  20    0x47d41  4      
  movl %eax, %r14d                                                                                    #  21    0x47d45  3      
  leal 0xc(%r14), %ebx                                                                                #  22    0x47d48  4      
  je .L_47dc0                                                                                         #  23    0x47d4c  6      
  movl %r12d, %edx                                                                                    #  24    0x47d52  3      
  movl %r13d, %esi                                                                                    #  25    0x47d55  3      
  movl %ebx, %edi                                                                                     #  26    0x47d58  2      
  nop                                                                                                 #  27    0x47d5a  1      
  callq .memcpy                                                                                       #  28    0x47d5b  5      
.L_47d60:                                                                                             #        0x47d60  0      
  movl %r14d, %r14d                                                                                   #  29    0x47d60  3      
  movl %r12d, (%r15,%r14,1)                                                                           #  30    0x47d63  4      
  addl %ebx, %r12d                                                                                    #  31    0x47d67  3      
  movl %r14d, %r14d                                                                                   #  32    0x47d6a  3      
  movl $0x0, 0x8(%r15,%r14,1)                                                                         #  33    0x47d6d  9      
  movl %r12d, %r12d                                                                                   #  34    0x47d76  3      
  movb $0x0, (%r15,%r12,1)                                                                            #  35    0x47d79  5      
  xchgw %ax, %ax                                                                                      #  36    0x47d7e  3      
.L_47d80:                                                                                             #        0x47d81  0      
  movl %ebx, %eax                                                                                     #  37    0x47d81  2      
  movq 0x10(%rsp), %r12                                                                               #  38    0x47d83  5      
  movq 0x8(%rsp), %rbx                                                                                #  39    0x47d88  5      
  movq 0x18(%rsp), %r13                                                                               #  40    0x47d8d  5      
  movq 0x20(%rsp), %r14                                                                               #  41    0x47d92  5      
  addl $0x28, %esp                                                                                    #  42    0x47d97  3      
  addq %r15, %rsp                                                                                     #  43    0x47d9a  3      
  popq %r11                                                                                           #  44    0x47d9d  3      
  xchgw %ax, %ax                                                                                      #  45    0x47da0  3      
  andl $0xffffffe0, %r11d                                                                             #  46    0x47da3  7      
  addq %r15, %r11                                                                                     #  47    0x47daa  3      
  jmpq %r11                                                                                           #  48    0x47dad  3      
  nop                                                                                                 #  49    0x47db0  1      
  nop                                                                                                 #  50    0x47db1  1      
.L_47dc0:                                                                                             #        0x47db2  0      
  movl %r13d, %r13d                                                                                   #  51    0x47db2  3      
  movzbl (%r15,%r13,1), %eax                                                                          #  52    0x47db5  5      
  movl %ebx, %ebx                                                                                     #  53    0x47dba  2      
  movb %al, (%r15,%rbx,1)                                                                             #  54    0x47dbc  4      
  jmpq .L_47d60                                                                                       #  55    0x47dc0  5      
  nop                                                                                                 #  56    0x47dc5  1      
  nop                                                                                                 #  57    0x47dc6  1      
  nop                                                                                                 #  58    0x47dc7  1      
  nop                                                                                                 #  59    0x47dc8  1      
  nop                                                                                                 #  60    0x47dc9  1      
  nop                                                                                                 #  61    0x47dca  1      
  nop                                                                                                 #  62    0x47dcb  1      
  nop                                                                                                 #  63    0x47dcc  1      
  nop                                                                                                 #  64    0x47dcd  1      
  nop                                                                                                 #  65    0x47dce  1      
  nop                                                                                                 #  66    0x47dcf  1      
  nop                                                                                                 #  67    0x47dd0  1      
  nop                                                                                                 #  68    0x47dd1  1      
  nop                                                                                                 #  69    0x47dd2  1      
  nop                                                                                                 #  70    0x47dd3  1      
  nop                                                                                                 #  71    0x47dd4  1      
                                                                                                                               
.size _ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIN9__gnu_cxx17__normal_iteratorIPcSsEEEES2_T_S4_RKSaIcESt20forward_iterator_tag


  .text
  .globl _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_
  .type _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_, @function

#! file-offset 0x46a80
#! rip-offset  0x46a80
#! capacity    288 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_:  #        0x46a80  0      
  movq %rbx, -0x18(%rsp)                                #  1     0x46a80  5      
  movq %r12, -0x10(%rsp)                                #  2     0x46a85  5      
  movl %edi, %ebx                                       #  3     0x46a8a  2      
  movl %edx, %r12d                                      #  4     0x46a8c  3      
  movq %r13, -0x8(%rsp)                                 #  5     0x46a8f  5      
  subl $0x18, %esp                                      #  6     0x46a94  3      
  addq %r15, %rsp                                       #  7     0x46a97  3      
  nop                                                   #  8     0x46a9a  1      
  movl %ebx, %ebx                                       #  9     0x46a9b  2      
  movl $0x10031dac, (%r15,%rbx,1)                       #  10    0x46a9d  8      
  movl %r12d, %r12d                                     #  11    0x46aa5  3      
  movl (%r15,%r12,1), %eax                              #  12    0x46aa8  4      
  movl %esi, %r13d                                      #  13    0x46aac  3      
  movl %ebx, %edi                                       #  14    0x46aaf  2      
  subl $0xc, %eax                                       #  15    0x46ab1  3      
  movl %eax, %eax                                       #  16    0x46ab4  2      
  movl (%r15,%rax,1), %esi                              #  17    0x46ab6  4      
  nop                                                   #  18    0x46aba  1      
  addl $0x1, %esi                                       #  19    0x46abb  3      
  nop                                                   #  20    0x46abe  1      
  nop                                                   #  21    0x46abf  1      
  callq ._ZNSs7reserveEj                                #  22    0x46ac0  5      
  movsbl %r13b, %edx                                    #  23    0x46ac5  4      
  movl $0x1, %esi                                       #  24    0x46ac9  5      
  movl %ebx, %edi                                       #  25    0x46ace  2      
  nop                                                   #  26    0x46ad0  1      
  nop                                                   #  27    0x46ad1  1      
  callq ._ZNSs6appendEjc                                #  28    0x46ad2  5      
  movl %r12d, %esi                                      #  29    0x46ad7  3      
  movl %ebx, %edi                                       #  30    0x46ada  2      
  nop                                                   #  31    0x46adc  1      
  nop                                                   #  32    0x46add  1      
  callq ._ZNSs6appendERKSs                              #  33    0x46ade  5      
  movl %ebx, %eax                                       #  34    0x46ae3  2      
  movq 0x8(%rsp), %r12                                  #  35    0x46ae5  5      
  movq (%rsp), %rbx                                     #  36    0x46aea  4      
  movq 0x10(%rsp), %r13                                 #  37    0x46aee  5      
  addl $0x18, %esp                                      #  38    0x46af3  3      
  addq %r15, %rsp                                       #  39    0x46af6  3      
  popq %r11                                             #  40    0x46af9  3      
  nop                                                   #  41    0x46afc  1      
  andl $0xffffffe0, %r11d                               #  42    0x46afd  7      
  addq %r15, %r11                                       #  43    0x46b04  3      
  jmpq %r11                                             #  44    0x46b07  3      
  nop                                                   #  45    0x46b0a  1      
  nop                                                   #  46    0x46b0b  1      
  movl %eax, %r12d                                      #  47    0x46b0c  3      
  movl %ebx, %edi                                       #  48    0x46b0f  2      
  nop                                                   #  49    0x46b11  1      
  nop                                                   #  50    0x46b12  1      
  callq ._ZNSsD1Ev                                      #  51    0x46b13  5      
  movl %r12d, %edi                                      #  52    0x46b18  3      
  nop                                                   #  53    0x46b1b  1      
  nop                                                   #  54    0x46b1c  1      
  callq ._Unwind_Resume                                 #  55    0x46b1d  5      
                                                                                 
.size _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_


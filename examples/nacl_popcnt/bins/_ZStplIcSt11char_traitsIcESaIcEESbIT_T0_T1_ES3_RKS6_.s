  .text
  .globl _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_
  .type _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_, @function

#! file-offset 0x46b00
#! rip-offset  0x46b00
#! capacity    288 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_:  #        0x46b00  0      
  movq %rbx, -0x18(%rsp)                                #  1     0x46b00  5      
  movq %r12, -0x10(%rsp)                                #  2     0x46b05  5      
  movl %edi, %ebx                                       #  3     0x46b0a  2      
  movl %edx, %r12d                                      #  4     0x46b0c  3      
  movq %r13, -0x8(%rsp)                                 #  5     0x46b0f  5      
  subl $0x18, %esp                                      #  6     0x46b14  3      
  addq %r15, %rsp                                       #  7     0x46b17  3      
  nop                                                   #  8     0x46b1a  1      
  movl %ebx, %ebx                                       #  9     0x46b1b  2      
  movl $0x10031dac, (%r15,%rbx,1)                       #  10    0x46b1d  8      
  movl %r12d, %r12d                                     #  11    0x46b25  3      
  movl (%r15,%r12,1), %eax                              #  12    0x46b28  4      
  movl %esi, %r13d                                      #  13    0x46b2c  3      
  movl %ebx, %edi                                       #  14    0x46b2f  2      
  subl $0xc, %eax                                       #  15    0x46b31  3      
  movl %eax, %eax                                       #  16    0x46b34  2      
  movl (%r15,%rax,1), %esi                              #  17    0x46b36  4      
  nop                                                   #  18    0x46b3a  1      
  addl $0x1, %esi                                       #  19    0x46b3b  3      
  nop                                                   #  20    0x46b3e  1      
  nop                                                   #  21    0x46b3f  1      
  callq ._ZNSs7reserveEj                                #  22    0x46b40  5      
  movsbl %r13b, %edx                                    #  23    0x46b45  4      
  movl $0x1, %esi                                       #  24    0x46b49  5      
  movl %ebx, %edi                                       #  25    0x46b4e  2      
  nop                                                   #  26    0x46b50  1      
  nop                                                   #  27    0x46b51  1      
  callq ._ZNSs6appendEjc                                #  28    0x46b52  5      
  movl %r12d, %esi                                      #  29    0x46b57  3      
  movl %ebx, %edi                                       #  30    0x46b5a  2      
  nop                                                   #  31    0x46b5c  1      
  nop                                                   #  32    0x46b5d  1      
  callq ._ZNSs6appendERKSs                              #  33    0x46b5e  5      
  movl %ebx, %eax                                       #  34    0x46b63  2      
  movq 0x8(%rsp), %r12                                  #  35    0x46b65  5      
  movq (%rsp), %rbx                                     #  36    0x46b6a  4      
  movq 0x10(%rsp), %r13                                 #  37    0x46b6e  5      
  addl $0x18, %esp                                      #  38    0x46b73  3      
  addq %r15, %rsp                                       #  39    0x46b76  3      
  popq %r11                                             #  40    0x46b79  3      
  nop                                                   #  41    0x46b7c  1      
  andl $0xffffffe0, %r11d                               #  42    0x46b7d  7      
  addq %r15, %r11                                       #  43    0x46b84  3      
  jmpq %r11                                             #  44    0x46b87  3      
  nop                                                   #  45    0x46b8a  1      
  nop                                                   #  46    0x46b8b  1      
  movl %eax, %r12d                                      #  47    0x46b8c  3      
  movl %ebx, %edi                                       #  48    0x46b8f  2      
  nop                                                   #  49    0x46b91  1      
  nop                                                   #  50    0x46b92  1      
  callq ._ZNSsD1Ev                                      #  51    0x46b93  5      
  movl %r12d, %edi                                      #  52    0x46b98  3      
  nop                                                   #  53    0x46b9b  1      
  nop                                                   #  54    0x46b9c  1      
  callq ._Unwind_Resume                                 #  55    0x46b9d  5      
                                                                                 
.size _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ES3_RKS6_


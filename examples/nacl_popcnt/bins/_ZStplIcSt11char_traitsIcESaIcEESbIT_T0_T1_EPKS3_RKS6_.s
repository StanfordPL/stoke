  .text
  .globl _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
  .type _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, @function

#! file-offset 0x46c20
#! rip-offset  0x46c20
#! capacity    320 bytes

# Text                                                    #  Line  RIP      Bytes  
._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_:  #        0x46c20  0      
  movq %r14, -0x8(%rsp)                                   #  1     0x46c20  5      
  movl %esi, %r14d                                        #  2     0x46c25  3      
  movq %rbx, -0x20(%rsp)                                  #  3     0x46c28  5      
  movq %r12, -0x18(%rsp)                                  #  4     0x46c2d  5      
  movq %r13, -0x10(%rsp)                                  #  5     0x46c32  5      
  movl %edi, %ebx                                         #  6     0x46c37  2      
  movl %edx, %r12d                                        #  7     0x46c39  3      
  movl %r14d, %edi                                        #  8     0x46c3c  3      
  nop                                                     #  9     0x46c3f  1      
  subl $0x28, %esp                                        #  10    0x46c40  3      
  addq %r15, %rsp                                         #  11    0x46c43  3      
  nop                                                     #  12    0x46c46  1      
  nop                                                     #  13    0x46c47  1      
  callq .strlen                                           #  14    0x46c48  5      
  movl %ebx, %ebx                                         #  15    0x46c4d  2      
  movl $0x10031dac, (%r15,%rbx,1)                         #  16    0x46c4f  8      
  movl %eax, %r13d                                        #  17    0x46c57  3      
  movl %r12d, %r12d                                       #  18    0x46c5a  3      
  movl (%r15,%r12,1), %eax                                #  19    0x46c5d  4      
  movl %ebx, %edi                                         #  20    0x46c61  2      
  subl $0xc, %eax                                         #  21    0x46c63  3      
  movl %eax, %eax                                         #  22    0x46c66  2      
  movl (%r15,%rax,1), %esi                                #  23    0x46c68  4      
  nop                                                     #  24    0x46c6c  1      
  addl %r13d, %esi                                        #  25    0x46c6d  3      
  nop                                                     #  26    0x46c70  1      
  nop                                                     #  27    0x46c71  1      
  callq ._ZNSs7reserveEj                                  #  28    0x46c72  5      
  movl %r13d, %edx                                        #  29    0x46c77  3      
  movl %r14d, %esi                                        #  30    0x46c7a  3      
  movl %ebx, %edi                                         #  31    0x46c7d  2      
  nop                                                     #  32    0x46c7f  1      
  nop                                                     #  33    0x46c80  1      
  callq ._ZNSs6appendEPKcj                                #  34    0x46c81  5      
  movl %r12d, %esi                                        #  35    0x46c86  3      
  movl %ebx, %edi                                         #  36    0x46c89  2      
  nop                                                     #  37    0x46c8b  1      
  nop                                                     #  38    0x46c8c  1      
  callq ._ZNSs6appendERKSs                                #  39    0x46c8d  5      
  movl %ebx, %eax                                         #  40    0x46c92  2      
  movq 0x10(%rsp), %r12                                   #  41    0x46c94  5      
  movq 0x8(%rsp), %rbx                                    #  42    0x46c99  5      
  movq 0x18(%rsp), %r13                                   #  43    0x46c9e  5      
  movq 0x20(%rsp), %r14                                   #  44    0x46ca3  5      
  addl $0x28, %esp                                        #  45    0x46ca8  3      
  addq %r15, %rsp                                         #  46    0x46cab  3      
  popq %r11                                               #  47    0x46cae  3      
  xchgw %ax, %ax                                          #  48    0x46cb1  3      
  andl $0xffffffe0, %r11d                                 #  49    0x46cb4  7      
  addq %r15, %r11                                         #  50    0x46cbb  3      
  jmpq %r11                                               #  51    0x46cbe  3      
  nop                                                     #  52    0x46cc1  1      
  nop                                                     #  53    0x46cc2  1      
  movl %eax, %r12d                                        #  54    0x46cc3  3      
  movl %ebx, %edi                                         #  55    0x46cc6  2      
  nop                                                     #  56    0x46cc8  1      
  nop                                                     #  57    0x46cc9  1      
  callq ._ZNSsD1Ev                                        #  58    0x46cca  5      
  movl %r12d, %edi                                        #  59    0x46ccf  3      
  nop                                                     #  60    0x46cd2  1      
  nop                                                     #  61    0x46cd3  1      
  callq ._Unwind_Resume                                   #  62    0x46cd4  5      
                                                                                   
.size _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_


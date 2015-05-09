  .text
  .globl _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
  .type _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, @function

#! file-offset 0x46b80
#! rip-offset  0x46b80
#! capacity    320 bytes

# Text                                                    #  Line  RIP      Bytes  
._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_:  #        0x46b80  0      
  movq %r14, -0x8(%rsp)                                   #  1     0x46b80  5      
  movl %esi, %r14d                                        #  2     0x46b85  3      
  movq %rbx, -0x20(%rsp)                                  #  3     0x46b88  5      
  movq %r12, -0x18(%rsp)                                  #  4     0x46b8d  5      
  movq %r13, -0x10(%rsp)                                  #  5     0x46b92  5      
  movl %edi, %ebx                                         #  6     0x46b97  2      
  movl %edx, %r12d                                        #  7     0x46b99  3      
  movl %r14d, %edi                                        #  8     0x46b9c  3      
  nop                                                     #  9     0x46b9f  1      
  subl $0x28, %esp                                        #  10    0x46ba0  3      
  addq %r15, %rsp                                         #  11    0x46ba3  3      
  nop                                                     #  12    0x46ba6  1      
  nop                                                     #  13    0x46ba7  1      
  callq .strlen                                           #  14    0x46ba8  5      
  movl %ebx, %ebx                                         #  15    0x46bad  2      
  movl $0x10031dac, (%r15,%rbx,1)                         #  16    0x46baf  8      
  movl %eax, %r13d                                        #  17    0x46bb7  3      
  movl %r12d, %r12d                                       #  18    0x46bba  3      
  movl (%r15,%r12,1), %eax                                #  19    0x46bbd  4      
  movl %ebx, %edi                                         #  20    0x46bc1  2      
  subl $0xc, %eax                                         #  21    0x46bc3  3      
  movl %eax, %eax                                         #  22    0x46bc6  2      
  movl (%r15,%rax,1), %esi                                #  23    0x46bc8  4      
  nop                                                     #  24    0x46bcc  1      
  addl %r13d, %esi                                        #  25    0x46bcd  3      
  nop                                                     #  26    0x46bd0  1      
  nop                                                     #  27    0x46bd1  1      
  callq ._ZNSs7reserveEj                                  #  28    0x46bd2  5      
  movl %r13d, %edx                                        #  29    0x46bd7  3      
  movl %r14d, %esi                                        #  30    0x46bda  3      
  movl %ebx, %edi                                         #  31    0x46bdd  2      
  nop                                                     #  32    0x46bdf  1      
  nop                                                     #  33    0x46be0  1      
  callq ._ZNSs6appendEPKcj                                #  34    0x46be1  5      
  movl %r12d, %esi                                        #  35    0x46be6  3      
  movl %ebx, %edi                                         #  36    0x46be9  2      
  nop                                                     #  37    0x46beb  1      
  nop                                                     #  38    0x46bec  1      
  callq ._ZNSs6appendERKSs                                #  39    0x46bed  5      
  movl %ebx, %eax                                         #  40    0x46bf2  2      
  movq 0x10(%rsp), %r12                                   #  41    0x46bf4  5      
  movq 0x8(%rsp), %rbx                                    #  42    0x46bf9  5      
  movq 0x18(%rsp), %r13                                   #  43    0x46bfe  5      
  movq 0x20(%rsp), %r14                                   #  44    0x46c03  5      
  addl $0x28, %esp                                        #  45    0x46c08  3      
  addq %r15, %rsp                                         #  46    0x46c0b  3      
  popq %r11                                               #  47    0x46c0e  3      
  xchgw %ax, %ax                                          #  48    0x46c11  3      
  andl $0xffffffe0, %r11d                                 #  49    0x46c14  7      
  addq %r15, %r11                                         #  50    0x46c1b  3      
  jmpq %r11                                               #  51    0x46c1e  3      
  nop                                                     #  52    0x46c21  1      
  nop                                                     #  53    0x46c22  1      
  movl %eax, %r12d                                        #  54    0x46c23  3      
  movl %ebx, %edi                                         #  55    0x46c26  2      
  nop                                                     #  56    0x46c28  1      
  nop                                                     #  57    0x46c29  1      
  callq ._ZNSsD1Ev                                        #  58    0x46c2a  5      
  movl %r12d, %edi                                        #  59    0x46c2f  3      
  nop                                                     #  60    0x46c32  1      
  nop                                                     #  61    0x46c33  1      
  callq ._Unwind_Resume                                   #  62    0x46c34  5      
                                                                                   
.size _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_


  .text
  .globl _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_
  .type _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, @function

#! file-offset 0x46ba0
#! rip-offset  0x46ba0
#! capacity    320 bytes

# Text                                                    #  Line  RIP      Bytes  
._ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_:  #        0x46ba0  0      
  movq %r14, -0x8(%rsp)                                   #  1     0x46ba0  5      
  movl %esi, %r14d                                        #  2     0x46ba5  3      
  movq %rbx, -0x20(%rsp)                                  #  3     0x46ba8  5      
  movq %r12, -0x18(%rsp)                                  #  4     0x46bad  5      
  movq %r13, -0x10(%rsp)                                  #  5     0x46bb2  5      
  movl %edi, %ebx                                         #  6     0x46bb7  2      
  movl %edx, %r12d                                        #  7     0x46bb9  3      
  movl %r14d, %edi                                        #  8     0x46bbc  3      
  nop                                                     #  9     0x46bbf  1      
  subl $0x28, %esp                                        #  10    0x46bc0  3      
  addq %r15, %rsp                                         #  11    0x46bc3  3      
  nop                                                     #  12    0x46bc6  1      
  nop                                                     #  13    0x46bc7  1      
  callq .strlen                                           #  14    0x46bc8  5      
  movl %ebx, %ebx                                         #  15    0x46bcd  2      
  movl $0x10031dac, (%r15,%rbx,1)                         #  16    0x46bcf  8      
  movl %eax, %r13d                                        #  17    0x46bd7  3      
  movl %r12d, %r12d                                       #  18    0x46bda  3      
  movl (%r15,%r12,1), %eax                                #  19    0x46bdd  4      
  movl %ebx, %edi                                         #  20    0x46be1  2      
  subl $0xc, %eax                                         #  21    0x46be3  3      
  movl %eax, %eax                                         #  22    0x46be6  2      
  movl (%r15,%rax,1), %esi                                #  23    0x46be8  4      
  nop                                                     #  24    0x46bec  1      
  addl %r13d, %esi                                        #  25    0x46bed  3      
  nop                                                     #  26    0x46bf0  1      
  nop                                                     #  27    0x46bf1  1      
  callq ._ZNSs7reserveEj                                  #  28    0x46bf2  5      
  movl %r13d, %edx                                        #  29    0x46bf7  3      
  movl %r14d, %esi                                        #  30    0x46bfa  3      
  movl %ebx, %edi                                         #  31    0x46bfd  2      
  nop                                                     #  32    0x46bff  1      
  nop                                                     #  33    0x46c00  1      
  callq ._ZNSs6appendEPKcj                                #  34    0x46c01  5      
  movl %r12d, %esi                                        #  35    0x46c06  3      
  movl %ebx, %edi                                         #  36    0x46c09  2      
  nop                                                     #  37    0x46c0b  1      
  nop                                                     #  38    0x46c0c  1      
  callq ._ZNSs6appendERKSs                                #  39    0x46c0d  5      
  movl %ebx, %eax                                         #  40    0x46c12  2      
  movq 0x10(%rsp), %r12                                   #  41    0x46c14  5      
  movq 0x8(%rsp), %rbx                                    #  42    0x46c19  5      
  movq 0x18(%rsp), %r13                                   #  43    0x46c1e  5      
  movq 0x20(%rsp), %r14                                   #  44    0x46c23  5      
  addl $0x28, %esp                                        #  45    0x46c28  3      
  addq %r15, %rsp                                         #  46    0x46c2b  3      
  popq %r11                                               #  47    0x46c2e  3      
  xchgw %ax, %ax                                          #  48    0x46c31  3      
  andl $0xffffffe0, %r11d                                 #  49    0x46c34  7      
  addq %r15, %r11                                         #  50    0x46c3b  3      
  jmpq %r11                                               #  51    0x46c3e  3      
  nop                                                     #  52    0x46c41  1      
  nop                                                     #  53    0x46c42  1      
  movl %eax, %r12d                                        #  54    0x46c43  3      
  movl %ebx, %edi                                         #  55    0x46c46  2      
  nop                                                     #  56    0x46c48  1      
  nop                                                     #  57    0x46c49  1      
  callq ._ZNSsD1Ev                                        #  58    0x46c4a  5      
  movl %r12d, %edi                                        #  59    0x46c4f  3      
  nop                                                     #  60    0x46c52  1      
  nop                                                     #  61    0x46c53  1      
  callq ._Unwind_Resume                                   #  62    0x46c54  5      
                                                                                   
.size _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_, .-_ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_EPKS3_RKS6_


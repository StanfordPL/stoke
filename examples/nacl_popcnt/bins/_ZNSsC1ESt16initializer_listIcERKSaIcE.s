  .text
  .globl _ZNSsC1ESt16initializer_listIcERKSaIcE
  .type _ZNSsC1ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0x47400
#! rip-offset  0x47400
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1ESt16initializer_listIcERKSaIcE:                                  #        0x47400  0      
  pushq %rbx                                                              #  1     0x47400  2      
  movl %edi, %ebx                                                         #  2     0x47402  2      
  movl %esi, %edi                                                         #  3     0x47404  2      
  shrq $0x20, %rsi                                                        #  4     0x47406  4      
  movl %edx, %edx                                                         #  5     0x4740a  2      
  leal (%rdi,%rsi,1), %esi                                                #  6     0x4740c  3      
  subl $0x10, %esp                                                        #  7     0x4740f  3      
  addq %r15, %rsp                                                         #  8     0x47412  3      
  movb $0x0, (%rsp)                                                       #  9     0x47415  4      
  nop                                                                     #  10    0x47419  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x4741a  5      
  movl %ebx, %ebx                                                         #  12    0x4741f  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x47421  4      
  addl $0x10, %esp                                                        #  14    0x47425  3      
  addq %r15, %rsp                                                         #  15    0x47428  3      
  popq %rbx                                                               #  16    0x4742b  2      
  popq %r11                                                               #  17    0x4742d  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x47430  7      
  addq %r15, %r11                                                         #  19    0x47437  3      
  jmpq %r11                                                               #  20    0x4743a  3      
  nop                                                                     #  21    0x4743d  1      
  nop                                                                     #  22    0x4743e  1      
  nop                                                                     #  23    0x4743f  1      
  nop                                                                     #  24    0x47440  1      
  nop                                                                     #  25    0x47441  1      
  nop                                                                     #  26    0x47442  1      
  nop                                                                     #  27    0x47443  1      
                                                                                                   
.size _ZNSsC1ESt16initializer_listIcERKSaIcE, .-_ZNSsC1ESt16initializer_listIcERKSaIcE


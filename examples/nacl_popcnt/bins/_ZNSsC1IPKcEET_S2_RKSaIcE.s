  .text
  .globl _ZNSsC1IPKcEET_S2_RKSaIcE
  .type _ZNSsC1IPKcEET_S2_RKSaIcE, @function

#! file-offset 0x47400
#! rip-offset  0x47400
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1IPKcEET_S2_RKSaIcE:                                               #        0x47400  0      
  pushq %rbx                                                              #  1     0x47400  2      
  movl %edi, %ebx                                                         #  2     0x47402  2      
  movl %esi, %edi                                                         #  3     0x47404  2      
  movl %edx, %esi                                                         #  4     0x47406  2      
  movl %ecx, %edx                                                         #  5     0x47408  2      
  subl $0x10, %esp                                                        #  6     0x4740a  3      
  addq %r15, %rsp                                                         #  7     0x4740d  3      
  movb $0x0, (%rsp)                                                       #  8     0x47410  4      
  nop                                                                     #  9     0x47414  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  10    0x47415  5      
  movl %ebx, %ebx                                                         #  11    0x4741a  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x4741c  4      
  addl $0x10, %esp                                                        #  13    0x47420  3      
  addq %r15, %rsp                                                         #  14    0x47423  3      
  popq %rbx                                                               #  15    0x47426  2      
  popq %r11                                                               #  16    0x47428  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x4742b  7      
  addq %r15, %r11                                                         #  18    0x47432  3      
  jmpq %r11                                                               #  19    0x47435  3      
  nop                                                                     #  20    0x47438  1      
  nop                                                                     #  21    0x47439  1      
  nop                                                                     #  22    0x4743a  1      
  nop                                                                     #  23    0x4743b  1      
  nop                                                                     #  24    0x4743c  1      
  nop                                                                     #  25    0x4743d  1      
  nop                                                                     #  26    0x4743e  1      
                                                                                                   
.size _ZNSsC1IPKcEET_S2_RKSaIcE, .-_ZNSsC1IPKcEET_S2_RKSaIcE


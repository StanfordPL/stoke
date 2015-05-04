  .text
  .globl _ZNSsC2IPKcEET_S2_RKSaIcE
  .type _ZNSsC2IPKcEET_S2_RKSaIcE, @function

#! file-offset 0x47440
#! rip-offset  0x47440
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2IPKcEET_S2_RKSaIcE:                                               #        0x47440  0      
  pushq %rbx                                                              #  1     0x47440  2      
  movl %edi, %ebx                                                         #  2     0x47442  2      
  movl %esi, %edi                                                         #  3     0x47444  2      
  movl %edx, %esi                                                         #  4     0x47446  2      
  movl %ecx, %edx                                                         #  5     0x47448  2      
  subl $0x10, %esp                                                        #  6     0x4744a  3      
  addq %r15, %rsp                                                         #  7     0x4744d  3      
  movb $0x0, (%rsp)                                                       #  8     0x47450  4      
  nop                                                                     #  9     0x47454  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  10    0x47455  5      
  movl %ebx, %ebx                                                         #  11    0x4745a  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x4745c  4      
  addl $0x10, %esp                                                        #  13    0x47460  3      
  addq %r15, %rsp                                                         #  14    0x47463  3      
  popq %rbx                                                               #  15    0x47466  2      
  popq %r11                                                               #  16    0x47468  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x4746b  7      
  addq %r15, %r11                                                         #  18    0x47472  3      
  jmpq %r11                                                               #  19    0x47475  3      
  nop                                                                     #  20    0x47478  1      
  nop                                                                     #  21    0x47479  1      
  nop                                                                     #  22    0x4747a  1      
  nop                                                                     #  23    0x4747b  1      
  nop                                                                     #  24    0x4747c  1      
  nop                                                                     #  25    0x4747d  1      
  nop                                                                     #  26    0x4747e  1      
                                                                                                   
.size _ZNSsC2IPKcEET_S2_RKSaIcE, .-_ZNSsC2IPKcEET_S2_RKSaIcE


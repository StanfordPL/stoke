  .text
  .globl _ZNSsC2ESt16initializer_listIcERKSaIcE
  .type _ZNSsC2ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0x47420
#! rip-offset  0x47420
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2ESt16initializer_listIcERKSaIcE:                                  #        0x47420  0      
  pushq %rbx                                                              #  1     0x47420  2      
  movl %edi, %ebx                                                         #  2     0x47422  2      
  movl %esi, %edi                                                         #  3     0x47424  2      
  shrq $0x20, %rsi                                                        #  4     0x47426  4      
  movl %edx, %edx                                                         #  5     0x4742a  2      
  leal (%rdi,%rsi,1), %esi                                                #  6     0x4742c  3      
  subl $0x10, %esp                                                        #  7     0x4742f  3      
  addq %r15, %rsp                                                         #  8     0x47432  3      
  movb $0x0, (%rsp)                                                       #  9     0x47435  4      
  nop                                                                     #  10    0x47439  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x4743a  5      
  movl %ebx, %ebx                                                         #  12    0x4743f  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x47441  4      
  addl $0x10, %esp                                                        #  14    0x47445  3      
  addq %r15, %rsp                                                         #  15    0x47448  3      
  popq %rbx                                                               #  16    0x4744b  2      
  popq %r11                                                               #  17    0x4744d  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x47450  7      
  addq %r15, %r11                                                         #  19    0x47457  3      
  jmpq %r11                                                               #  20    0x4745a  3      
  nop                                                                     #  21    0x4745d  1      
  nop                                                                     #  22    0x4745e  1      
  nop                                                                     #  23    0x4745f  1      
  nop                                                                     #  24    0x47460  1      
  nop                                                                     #  25    0x47461  1      
  nop                                                                     #  26    0x47462  1      
  nop                                                                     #  27    0x47463  1      
                                                                                                   
.size _ZNSsC2ESt16initializer_listIcERKSaIcE, .-_ZNSsC2ESt16initializer_listIcERKSaIcE


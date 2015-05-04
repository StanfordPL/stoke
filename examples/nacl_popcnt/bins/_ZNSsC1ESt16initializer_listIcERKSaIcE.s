  .text
  .globl _ZNSsC1ESt16initializer_listIcERKSaIcE
  .type _ZNSsC1ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0x47480
#! rip-offset  0x47480
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1ESt16initializer_listIcERKSaIcE:                                  #        0x47480  0      
  pushq %rbx                                                              #  1     0x47480  2      
  movl %edi, %ebx                                                         #  2     0x47482  2      
  movl %esi, %edi                                                         #  3     0x47484  2      
  shrq $0x20, %rsi                                                        #  4     0x47486  4      
  movl %edx, %edx                                                         #  5     0x4748a  2      
  leal (%rdi,%rsi,1), %esi                                                #  6     0x4748c  3      
  subl $0x10, %esp                                                        #  7     0x4748f  3      
  addq %r15, %rsp                                                         #  8     0x47492  3      
  movb $0x0, (%rsp)                                                       #  9     0x47495  4      
  nop                                                                     #  10    0x47499  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x4749a  5      
  movl %ebx, %ebx                                                         #  12    0x4749f  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x474a1  4      
  addl $0x10, %esp                                                        #  14    0x474a5  3      
  addq %r15, %rsp                                                         #  15    0x474a8  3      
  popq %rbx                                                               #  16    0x474ab  2      
  popq %r11                                                               #  17    0x474ad  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x474b0  7      
  addq %r15, %r11                                                         #  19    0x474b7  3      
  jmpq %r11                                                               #  20    0x474ba  3      
  nop                                                                     #  21    0x474bd  1      
  nop                                                                     #  22    0x474be  1      
  nop                                                                     #  23    0x474bf  1      
  nop                                                                     #  24    0x474c0  1      
  nop                                                                     #  25    0x474c1  1      
  nop                                                                     #  26    0x474c2  1      
  nop                                                                     #  27    0x474c3  1      
                                                                                                   
.size _ZNSsC1ESt16initializer_listIcERKSaIcE, .-_ZNSsC1ESt16initializer_listIcERKSaIcE


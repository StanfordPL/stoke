  .text
  .globl _ZNSsC2ESt16initializer_listIcERKSaIcE
  .type _ZNSsC2ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0x474c0
#! rip-offset  0x474c0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2ESt16initializer_listIcERKSaIcE:                                  #        0x474c0  0      
  pushq %rbx                                                              #  1     0x474c0  2      
  movl %edi, %ebx                                                         #  2     0x474c2  2      
  movl %esi, %edi                                                         #  3     0x474c4  2      
  shrq $0x20, %rsi                                                        #  4     0x474c6  4      
  movl %edx, %edx                                                         #  5     0x474ca  2      
  leal (%rdi,%rsi,1), %esi                                                #  6     0x474cc  3      
  subl $0x10, %esp                                                        #  7     0x474cf  3      
  addq %r15, %rsp                                                         #  8     0x474d2  3      
  movb $0x0, (%rsp)                                                       #  9     0x474d5  4      
  nop                                                                     #  10    0x474d9  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x474da  5      
  movl %ebx, %ebx                                                         #  12    0x474df  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x474e1  4      
  addl $0x10, %esp                                                        #  14    0x474e5  3      
  addq %r15, %rsp                                                         #  15    0x474e8  3      
  popq %rbx                                                               #  16    0x474eb  2      
  popq %r11                                                               #  17    0x474ed  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x474f0  7      
  addq %r15, %r11                                                         #  19    0x474f7  3      
  jmpq %r11                                                               #  20    0x474fa  3      
  nop                                                                     #  21    0x474fd  1      
  nop                                                                     #  22    0x474fe  1      
  nop                                                                     #  23    0x474ff  1      
  nop                                                                     #  24    0x47500  1      
  nop                                                                     #  25    0x47501  1      
  nop                                                                     #  26    0x47502  1      
  nop                                                                     #  27    0x47503  1      
                                                                                                   
.size _ZNSsC2ESt16initializer_listIcERKSaIcE, .-_ZNSsC2ESt16initializer_listIcERKSaIcE


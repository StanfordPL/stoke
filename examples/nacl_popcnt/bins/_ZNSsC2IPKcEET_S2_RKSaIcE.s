  .text
  .globl _ZNSsC2IPKcEET_S2_RKSaIcE
  .type _ZNSsC2IPKcEET_S2_RKSaIcE, @function

#! file-offset 0x473c0
#! rip-offset  0x473c0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2IPKcEET_S2_RKSaIcE:                                               #        0x473c0  0      
  pushq %rbx                                                              #  1     0x473c0  2      
  movl %edi, %ebx                                                         #  2     0x473c2  2      
  movl %esi, %edi                                                         #  3     0x473c4  2      
  movl %edx, %esi                                                         #  4     0x473c6  2      
  movl %ecx, %edx                                                         #  5     0x473c8  2      
  subl $0x10, %esp                                                        #  6     0x473ca  3      
  addq %r15, %rsp                                                         #  7     0x473cd  3      
  movb $0x0, (%rsp)                                                       #  8     0x473d0  4      
  nop                                                                     #  9     0x473d4  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  10    0x473d5  5      
  movl %ebx, %ebx                                                         #  11    0x473da  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x473dc  4      
  addl $0x10, %esp                                                        #  13    0x473e0  3      
  addq %r15, %rsp                                                         #  14    0x473e3  3      
  popq %rbx                                                               #  15    0x473e6  2      
  popq %r11                                                               #  16    0x473e8  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x473eb  7      
  addq %r15, %r11                                                         #  18    0x473f2  3      
  jmpq %r11                                                               #  19    0x473f5  3      
  nop                                                                     #  20    0x473f8  1      
  nop                                                                     #  21    0x473f9  1      
  nop                                                                     #  22    0x473fa  1      
  nop                                                                     #  23    0x473fb  1      
  nop                                                                     #  24    0x473fc  1      
  nop                                                                     #  25    0x473fd  1      
  nop                                                                     #  26    0x473fe  1      
                                                                                                   
.size _ZNSsC2IPKcEET_S2_RKSaIcE, .-_ZNSsC2IPKcEET_S2_RKSaIcE


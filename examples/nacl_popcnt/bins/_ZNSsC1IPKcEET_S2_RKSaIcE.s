  .text
  .globl _ZNSsC1IPKcEET_S2_RKSaIcE
  .type _ZNSsC1IPKcEET_S2_RKSaIcE, @function

#! file-offset 0x47380
#! rip-offset  0x47380
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1IPKcEET_S2_RKSaIcE:                                               #        0x47380  0      
  pushq %rbx                                                              #  1     0x47380  2      
  movl %edi, %ebx                                                         #  2     0x47382  2      
  movl %esi, %edi                                                         #  3     0x47384  2      
  movl %edx, %esi                                                         #  4     0x47386  2      
  movl %ecx, %edx                                                         #  5     0x47388  2      
  subl $0x10, %esp                                                        #  6     0x4738a  3      
  addq %r15, %rsp                                                         #  7     0x4738d  3      
  movb $0x0, (%rsp)                                                       #  8     0x47390  4      
  nop                                                                     #  9     0x47394  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  10    0x47395  5      
  movl %ebx, %ebx                                                         #  11    0x4739a  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x4739c  4      
  addl $0x10, %esp                                                        #  13    0x473a0  3      
  addq %r15, %rsp                                                         #  14    0x473a3  3      
  popq %rbx                                                               #  15    0x473a6  2      
  popq %r11                                                               #  16    0x473a8  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x473ab  7      
  addq %r15, %r11                                                         #  18    0x473b2  3      
  jmpq %r11                                                               #  19    0x473b5  3      
  nop                                                                     #  20    0x473b8  1      
  nop                                                                     #  21    0x473b9  1      
  nop                                                                     #  22    0x473ba  1      
  nop                                                                     #  23    0x473bb  1      
  nop                                                                     #  24    0x473bc  1      
  nop                                                                     #  25    0x473bd  1      
  nop                                                                     #  26    0x473be  1      
                                                                                                   
.size _ZNSsC1IPKcEET_S2_RKSaIcE, .-_ZNSsC1IPKcEET_S2_RKSaIcE


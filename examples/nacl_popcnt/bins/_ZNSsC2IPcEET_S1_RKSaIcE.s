  .text
  .globl _ZNSsC2IPcEET_S1_RKSaIcE
  .type _ZNSsC2IPcEET_S1_RKSaIcE, @function

#! file-offset 0x47820
#! rip-offset  0x47820
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2IPcEET_S1_RKSaIcE:                                                #        0x47820  0      
  pushq %rbx                                                              #  1     0x47820  2      
  movl %edi, %ebx                                                         #  2     0x47822  2      
  movl %esi, %edi                                                         #  3     0x47824  2      
  movl %edx, %esi                                                         #  4     0x47826  2      
  movl %ecx, %edx                                                         #  5     0x47828  2      
  subl $0x10, %esp                                                        #  6     0x4782a  3      
  addq %r15, %rsp                                                         #  7     0x4782d  3      
  movb $0x0, (%rsp)                                                       #  8     0x47830  4      
  nop                                                                     #  9     0x47834  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  10    0x47835  5      
  movl %ebx, %ebx                                                         #  11    0x4783a  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x4783c  4      
  addl $0x10, %esp                                                        #  13    0x47840  3      
  addq %r15, %rsp                                                         #  14    0x47843  3      
  popq %rbx                                                               #  15    0x47846  2      
  popq %r11                                                               #  16    0x47848  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x4784b  7      
  addq %r15, %r11                                                         #  18    0x47852  3      
  jmpq %r11                                                               #  19    0x47855  3      
  nop                                                                     #  20    0x47858  1      
  nop                                                                     #  21    0x47859  1      
  nop                                                                     #  22    0x4785a  1      
  nop                                                                     #  23    0x4785b  1      
  nop                                                                     #  24    0x4785c  1      
  nop                                                                     #  25    0x4785d  1      
  nop                                                                     #  26    0x4785e  1      
                                                                                                   
.size _ZNSsC2IPcEET_S1_RKSaIcE, .-_ZNSsC2IPcEET_S1_RKSaIcE


  .text
  .globl _ZNSsC2IPcEET_S1_RKSaIcE
  .type _ZNSsC2IPcEET_S1_RKSaIcE, @function

#! file-offset 0x47840
#! rip-offset  0x47840
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2IPcEET_S1_RKSaIcE:                                                #        0x47840  0      
  pushq %rbx                                                              #  1     0x47840  2      
  movl %edi, %ebx                                                         #  2     0x47842  2      
  movl %esi, %edi                                                         #  3     0x47844  2      
  movl %edx, %esi                                                         #  4     0x47846  2      
  movl %ecx, %edx                                                         #  5     0x47848  2      
  subl $0x10, %esp                                                        #  6     0x4784a  3      
  addq %r15, %rsp                                                         #  7     0x4784d  3      
  movb $0x0, (%rsp)                                                       #  8     0x47850  4      
  nop                                                                     #  9     0x47854  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  10    0x47855  5      
  movl %ebx, %ebx                                                         #  11    0x4785a  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x4785c  4      
  addl $0x10, %esp                                                        #  13    0x47860  3      
  addq %r15, %rsp                                                         #  14    0x47863  3      
  popq %rbx                                                               #  15    0x47866  2      
  popq %r11                                                               #  16    0x47868  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x4786b  7      
  addq %r15, %r11                                                         #  18    0x47872  3      
  jmpq %r11                                                               #  19    0x47875  3      
  nop                                                                     #  20    0x47878  1      
  nop                                                                     #  21    0x47879  1      
  nop                                                                     #  22    0x4787a  1      
  nop                                                                     #  23    0x4787b  1      
  nop                                                                     #  24    0x4787c  1      
  nop                                                                     #  25    0x4787d  1      
  nop                                                                     #  26    0x4787e  1      
                                                                                                   
.size _ZNSsC2IPcEET_S1_RKSaIcE, .-_ZNSsC2IPcEET_S1_RKSaIcE


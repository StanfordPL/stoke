  .text
  .globl _ZNSsC1IPcEET_S1_RKSaIcE
  .type _ZNSsC1IPcEET_S1_RKSaIcE, @function

#! file-offset 0x47880
#! rip-offset  0x47880
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1IPcEET_S1_RKSaIcE:                                                #        0x47880  0      
  pushq %rbx                                                              #  1     0x47880  2      
  movl %edi, %ebx                                                         #  2     0x47882  2      
  movl %esi, %edi                                                         #  3     0x47884  2      
  movl %edx, %esi                                                         #  4     0x47886  2      
  movl %ecx, %edx                                                         #  5     0x47888  2      
  subl $0x10, %esp                                                        #  6     0x4788a  3      
  addq %r15, %rsp                                                         #  7     0x4788d  3      
  movb $0x0, (%rsp)                                                       #  8     0x47890  4      
  nop                                                                     #  9     0x47894  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  10    0x47895  5      
  movl %ebx, %ebx                                                         #  11    0x4789a  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x4789c  4      
  addl $0x10, %esp                                                        #  13    0x478a0  3      
  addq %r15, %rsp                                                         #  14    0x478a3  3      
  popq %rbx                                                               #  15    0x478a6  2      
  popq %r11                                                               #  16    0x478a8  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x478ab  7      
  addq %r15, %r11                                                         #  18    0x478b2  3      
  jmpq %r11                                                               #  19    0x478b5  3      
  nop                                                                     #  20    0x478b8  1      
  nop                                                                     #  21    0x478b9  1      
  nop                                                                     #  22    0x478ba  1      
  nop                                                                     #  23    0x478bb  1      
  nop                                                                     #  24    0x478bc  1      
  nop                                                                     #  25    0x478bd  1      
  nop                                                                     #  26    0x478be  1      
                                                                                                   
.size _ZNSsC1IPcEET_S1_RKSaIcE, .-_ZNSsC1IPcEET_S1_RKSaIcE


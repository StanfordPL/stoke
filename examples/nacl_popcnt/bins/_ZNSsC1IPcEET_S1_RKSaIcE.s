  .text
  .globl _ZNSsC1IPcEET_S1_RKSaIcE
  .type _ZNSsC1IPcEET_S1_RKSaIcE, @function

#! file-offset 0x477e0
#! rip-offset  0x477e0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1IPcEET_S1_RKSaIcE:                                                #        0x477e0  0      
  pushq %rbx                                                              #  1     0x477e0  2      
  movl %edi, %ebx                                                         #  2     0x477e2  2      
  movl %esi, %edi                                                         #  3     0x477e4  2      
  movl %edx, %esi                                                         #  4     0x477e6  2      
  movl %ecx, %edx                                                         #  5     0x477e8  2      
  subl $0x10, %esp                                                        #  6     0x477ea  3      
  addq %r15, %rsp                                                         #  7     0x477ed  3      
  movb $0x0, (%rsp)                                                       #  8     0x477f0  4      
  nop                                                                     #  9     0x477f4  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  10    0x477f5  5      
  movl %ebx, %ebx                                                         #  11    0x477fa  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x477fc  4      
  addl $0x10, %esp                                                        #  13    0x47800  3      
  addq %r15, %rsp                                                         #  14    0x47803  3      
  popq %rbx                                                               #  15    0x47806  2      
  popq %r11                                                               #  16    0x47808  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x4780b  7      
  addq %r15, %r11                                                         #  18    0x47812  3      
  jmpq %r11                                                               #  19    0x47815  3      
  nop                                                                     #  20    0x47818  1      
  nop                                                                     #  21    0x47819  1      
  nop                                                                     #  22    0x4781a  1      
  nop                                                                     #  23    0x4781b  1      
  nop                                                                     #  24    0x4781c  1      
  nop                                                                     #  25    0x4781d  1      
  nop                                                                     #  26    0x4781e  1      
                                                                                                   
.size _ZNSsC1IPcEET_S1_RKSaIcE, .-_ZNSsC1IPcEET_S1_RKSaIcE


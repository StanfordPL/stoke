  .text
  .globl _ZNSsC1IPcEET_S1_RKSaIcE
  .type _ZNSsC1IPcEET_S1_RKSaIcE, @function

#! file-offset 0x47800
#! rip-offset  0x47800
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1IPcEET_S1_RKSaIcE:                                                #        0x47800  0      
  pushq %rbx                                                              #  1     0x47800  2      
  movl %edi, %ebx                                                         #  2     0x47802  2      
  movl %esi, %edi                                                         #  3     0x47804  2      
  movl %edx, %esi                                                         #  4     0x47806  2      
  movl %ecx, %edx                                                         #  5     0x47808  2      
  subl $0x10, %esp                                                        #  6     0x4780a  3      
  addq %r15, %rsp                                                         #  7     0x4780d  3      
  movb $0x0, (%rsp)                                                       #  8     0x47810  4      
  nop                                                                     #  9     0x47814  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  10    0x47815  5      
  movl %ebx, %ebx                                                         #  11    0x4781a  2      
  movl %eax, (%r15,%rbx,1)                                                #  12    0x4781c  4      
  addl $0x10, %esp                                                        #  13    0x47820  3      
  addq %r15, %rsp                                                         #  14    0x47823  3      
  popq %rbx                                                               #  15    0x47826  2      
  popq %r11                                                               #  16    0x47828  3      
  andl $0xffffffe0, %r11d                                                 #  17    0x4782b  7      
  addq %r15, %r11                                                         #  18    0x47832  3      
  jmpq %r11                                                               #  19    0x47835  3      
  nop                                                                     #  20    0x47838  1      
  nop                                                                     #  21    0x47839  1      
  nop                                                                     #  22    0x4783a  1      
  nop                                                                     #  23    0x4783b  1      
  nop                                                                     #  24    0x4783c  1      
  nop                                                                     #  25    0x4783d  1      
  nop                                                                     #  26    0x4783e  1      
                                                                                                   
.size _ZNSsC1IPcEET_S1_RKSaIcE, .-_ZNSsC1IPcEET_S1_RKSaIcE


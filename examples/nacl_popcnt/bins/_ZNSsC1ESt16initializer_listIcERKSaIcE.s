  .text
  .globl _ZNSsC1ESt16initializer_listIcERKSaIcE
  .type _ZNSsC1ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0x473e0
#! rip-offset  0x473e0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1ESt16initializer_listIcERKSaIcE:                                  #        0x473e0  0      
  pushq %rbx                                                              #  1     0x473e0  2      
  movl %edi, %ebx                                                         #  2     0x473e2  2      
  movl %esi, %edi                                                         #  3     0x473e4  2      
  shrq $0x20, %rsi                                                        #  4     0x473e6  4      
  movl %edx, %edx                                                         #  5     0x473ea  2      
  leal (%rdi,%rsi,1), %esi                                                #  6     0x473ec  3      
  subl $0x10, %esp                                                        #  7     0x473ef  3      
  addq %r15, %rsp                                                         #  8     0x473f2  3      
  movb $0x0, (%rsp)                                                       #  9     0x473f5  4      
  nop                                                                     #  10    0x473f9  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x473fa  5      
  movl %ebx, %ebx                                                         #  12    0x473ff  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x47401  4      
  addl $0x10, %esp                                                        #  14    0x47405  3      
  addq %r15, %rsp                                                         #  15    0x47408  3      
  popq %rbx                                                               #  16    0x4740b  2      
  popq %r11                                                               #  17    0x4740d  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x47410  7      
  addq %r15, %r11                                                         #  19    0x47417  3      
  jmpq %r11                                                               #  20    0x4741a  3      
  nop                                                                     #  21    0x4741d  1      
  nop                                                                     #  22    0x4741e  1      
  nop                                                                     #  23    0x4741f  1      
  nop                                                                     #  24    0x47420  1      
  nop                                                                     #  25    0x47421  1      
  nop                                                                     #  26    0x47422  1      
  nop                                                                     #  27    0x47423  1      
                                                                                                   
.size _ZNSsC1ESt16initializer_listIcERKSaIcE, .-_ZNSsC1ESt16initializer_listIcERKSaIcE


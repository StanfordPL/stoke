  .text
  .globl _ZNSsC2EPKcjRKSaIcE
  .type _ZNSsC2EPKcjRKSaIcE, @function

#! file-offset 0x47640
#! rip-offset  0x47640
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2EPKcjRKSaIcE:                                                     #        0x47640  0      
  pushq %rbx                                                              #  1     0x47640  2      
  movl %edi, %ebx                                                         #  2     0x47642  2      
  movl %esi, %edi                                                         #  3     0x47644  2      
  movl %ecx, %ecx                                                         #  4     0x47646  2      
  leal (%rdx,%rdi,1), %esi                                                #  5     0x47648  3      
  subl $0x10, %esp                                                        #  6     0x4764b  3      
  addq %r15, %rsp                                                         #  7     0x4764e  3      
  movl %ecx, %edx                                                         #  8     0x47651  2      
  movb $0x0, (%rsp)                                                       #  9     0x47653  4      
  nop                                                                     #  10    0x47657  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x47658  5      
  movl %ebx, %ebx                                                         #  12    0x4765d  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x4765f  4      
  addl $0x10, %esp                                                        #  14    0x47663  3      
  addq %r15, %rsp                                                         #  15    0x47666  3      
  popq %rbx                                                               #  16    0x47669  2      
  popq %r11                                                               #  17    0x4766b  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x4766e  7      
  addq %r15, %r11                                                         #  19    0x47675  3      
  jmpq %r11                                                               #  20    0x47678  3      
  nop                                                                     #  21    0x4767b  1      
  nop                                                                     #  22    0x4767c  1      
  nop                                                                     #  23    0x4767d  1      
  nop                                                                     #  24    0x4767e  1      
  nop                                                                     #  25    0x4767f  1      
  nop                                                                     #  26    0x47680  1      
  nop                                                                     #  27    0x47681  1      
                                                                                                   
.size _ZNSsC2EPKcjRKSaIcE, .-_ZNSsC2EPKcjRKSaIcE


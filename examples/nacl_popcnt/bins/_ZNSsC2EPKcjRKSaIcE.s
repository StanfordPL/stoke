  .text
  .globl _ZNSsC2EPKcjRKSaIcE
  .type _ZNSsC2EPKcjRKSaIcE, @function

#! file-offset 0x47620
#! rip-offset  0x47620
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2EPKcjRKSaIcE:                                                     #        0x47620  0      
  pushq %rbx                                                              #  1     0x47620  2      
  movl %edi, %ebx                                                         #  2     0x47622  2      
  movl %esi, %edi                                                         #  3     0x47624  2      
  movl %ecx, %ecx                                                         #  4     0x47626  2      
  leal (%rdx,%rdi,1), %esi                                                #  5     0x47628  3      
  subl $0x10, %esp                                                        #  6     0x4762b  3      
  addq %r15, %rsp                                                         #  7     0x4762e  3      
  movl %ecx, %edx                                                         #  8     0x47631  2      
  movb $0x0, (%rsp)                                                       #  9     0x47633  4      
  nop                                                                     #  10    0x47637  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x47638  5      
  movl %ebx, %ebx                                                         #  12    0x4763d  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x4763f  4      
  addl $0x10, %esp                                                        #  14    0x47643  3      
  addq %r15, %rsp                                                         #  15    0x47646  3      
  popq %rbx                                                               #  16    0x47649  2      
  popq %r11                                                               #  17    0x4764b  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x4764e  7      
  addq %r15, %r11                                                         #  19    0x47655  3      
  jmpq %r11                                                               #  20    0x47658  3      
  nop                                                                     #  21    0x4765b  1      
  nop                                                                     #  22    0x4765c  1      
  nop                                                                     #  23    0x4765d  1      
  nop                                                                     #  24    0x4765e  1      
  nop                                                                     #  25    0x4765f  1      
  nop                                                                     #  26    0x47660  1      
  nop                                                                     #  27    0x47661  1      
                                                                                                   
.size _ZNSsC2EPKcjRKSaIcE, .-_ZNSsC2EPKcjRKSaIcE


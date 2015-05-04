  .text
  .globl _ZNSsC1EPKcjRKSaIcE
  .type _ZNSsC1EPKcjRKSaIcE, @function

#! file-offset 0x47680
#! rip-offset  0x47680
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1EPKcjRKSaIcE:                                                     #        0x47680  0      
  pushq %rbx                                                              #  1     0x47680  2      
  movl %edi, %ebx                                                         #  2     0x47682  2      
  movl %esi, %edi                                                         #  3     0x47684  2      
  movl %ecx, %ecx                                                         #  4     0x47686  2      
  leal (%rdx,%rdi,1), %esi                                                #  5     0x47688  3      
  subl $0x10, %esp                                                        #  6     0x4768b  3      
  addq %r15, %rsp                                                         #  7     0x4768e  3      
  movl %ecx, %edx                                                         #  8     0x47691  2      
  movb $0x0, (%rsp)                                                       #  9     0x47693  4      
  nop                                                                     #  10    0x47697  1      
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  11    0x47698  5      
  movl %ebx, %ebx                                                         #  12    0x4769d  2      
  movl %eax, (%r15,%rbx,1)                                                #  13    0x4769f  4      
  addl $0x10, %esp                                                        #  14    0x476a3  3      
  addq %r15, %rsp                                                         #  15    0x476a6  3      
  popq %rbx                                                               #  16    0x476a9  2      
  popq %r11                                                               #  17    0x476ab  3      
  andl $0xffffffe0, %r11d                                                 #  18    0x476ae  7      
  addq %r15, %r11                                                         #  19    0x476b5  3      
  jmpq %r11                                                               #  20    0x476b8  3      
  nop                                                                     #  21    0x476bb  1      
  nop                                                                     #  22    0x476bc  1      
  nop                                                                     #  23    0x476bd  1      
  nop                                                                     #  24    0x476be  1      
  nop                                                                     #  25    0x476bf  1      
  nop                                                                     #  26    0x476c0  1      
  nop                                                                     #  27    0x476c1  1      
                                                                                                   
.size _ZNSsC1EPKcjRKSaIcE, .-_ZNSsC1EPKcjRKSaIcE


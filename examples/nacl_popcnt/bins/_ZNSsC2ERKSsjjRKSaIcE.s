  .text
  .globl _ZNSsC2ERKSsjjRKSaIcE
  .type _ZNSsC2ERKSsjjRKSaIcE, @function

#! file-offset 0x47900
#! rip-offset  0x47900
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2ERKSsjjRKSaIcE:                                                   #        0x47900  0      
  pushq %rbx                                                              #  1     0x47900  2      
  movl %esi, %esi                                                         #  2     0x47902  2      
  movl %edi, %ebx                                                         #  3     0x47904  2      
  movl %r8d, %r8d                                                         #  4     0x47906  3      
  subl $0x10, %esp                                                        #  5     0x47909  3      
  addq %r15, %rsp                                                         #  6     0x4790c  3      
  movl %esi, %esi                                                         #  7     0x4790f  2      
  movl (%r15,%rsi,1), %edi                                                #  8     0x47911  4      
  leal -0xc(%rdi), %eax                                                   #  9     0x47915  3      
  movl %eax, %eax                                                         #  10    0x47918  2      
  movl (%r15,%rax,1), %esi                                                #  11    0x4791a  4      
  cmpl %esi, %edx                                                         #  12    0x4791e  2      
  nop                                                                     #  13    0x47920  1      
  ja .L_47960                                                             #  14    0x47921  6      
  subl %edx, %esi                                                         #  15    0x47927  2      
  movb $0x0, (%rsp)                                                       #  16    0x47929  4      
  cmpl %ecx, %esi                                                         #  17    0x4792d  2      
  cmoval %ecx, %esi                                                       #  18    0x4792f  3      
  addl %edx, %esi                                                         #  19    0x47932  2      
  addl %edi, %esi                                                         #  20    0x47934  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x47936  3      
  movl %r8d, %edx                                                         #  22    0x47939  3      
  nop                                                                     #  23    0x4793c  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x4793d  5      
  movl %ebx, %ebx                                                         #  25    0x47942  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x47944  4      
  addl $0x10, %esp                                                        #  27    0x47948  3      
  addq %r15, %rsp                                                         #  28    0x4794b  3      
  popq %rbx                                                               #  29    0x4794e  2      
  popq %r11                                                               #  30    0x47950  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x47953  7      
  addq %r15, %r11                                                         #  32    0x4795a  3      
  jmpq %r11                                                               #  33    0x4795d  3      
  nop                                                                     #  34    0x47960  1      
.L_47960:                                                                 #        0x47961  0      
  movl $0x100209f2, %edi                                                  #  35    0x47961  5      
  nop                                                                     #  36    0x47966  1      
  nop                                                                     #  37    0x47967  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x47968  5      
                                                                                                   
.size _ZNSsC2ERKSsjjRKSaIcE, .-_ZNSsC2ERKSsjjRKSaIcE


  .text
  .globl _ZNSsC2ERKSsjjRKSaIcE
  .type _ZNSsC2ERKSsjjRKSaIcE, @function

#! file-offset 0x478e0
#! rip-offset  0x478e0
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2ERKSsjjRKSaIcE:                                                   #        0x478e0  0      
  pushq %rbx                                                              #  1     0x478e0  2      
  movl %esi, %esi                                                         #  2     0x478e2  2      
  movl %edi, %ebx                                                         #  3     0x478e4  2      
  movl %r8d, %r8d                                                         #  4     0x478e6  3      
  subl $0x10, %esp                                                        #  5     0x478e9  3      
  addq %r15, %rsp                                                         #  6     0x478ec  3      
  movl %esi, %esi                                                         #  7     0x478ef  2      
  movl (%r15,%rsi,1), %edi                                                #  8     0x478f1  4      
  leal -0xc(%rdi), %eax                                                   #  9     0x478f5  3      
  movl %eax, %eax                                                         #  10    0x478f8  2      
  movl (%r15,%rax,1), %esi                                                #  11    0x478fa  4      
  cmpl %esi, %edx                                                         #  12    0x478fe  2      
  nop                                                                     #  13    0x47900  1      
  ja .L_47940                                                             #  14    0x47901  6      
  subl %edx, %esi                                                         #  15    0x47907  2      
  movb $0x0, (%rsp)                                                       #  16    0x47909  4      
  cmpl %ecx, %esi                                                         #  17    0x4790d  2      
  cmoval %ecx, %esi                                                       #  18    0x4790f  3      
  addl %edx, %esi                                                         #  19    0x47912  2      
  addl %edi, %esi                                                         #  20    0x47914  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x47916  3      
  movl %r8d, %edx                                                         #  22    0x47919  3      
  nop                                                                     #  23    0x4791c  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x4791d  5      
  movl %ebx, %ebx                                                         #  25    0x47922  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x47924  4      
  addl $0x10, %esp                                                        #  27    0x47928  3      
  addq %r15, %rsp                                                         #  28    0x4792b  3      
  popq %rbx                                                               #  29    0x4792e  2      
  popq %r11                                                               #  30    0x47930  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x47933  7      
  addq %r15, %r11                                                         #  32    0x4793a  3      
  jmpq %r11                                                               #  33    0x4793d  3      
  nop                                                                     #  34    0x47940  1      
.L_47940:                                                                 #        0x47941  0      
  movl $0x100209f2, %edi                                                  #  35    0x47941  5      
  nop                                                                     #  36    0x47946  1      
  nop                                                                     #  37    0x47947  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x47948  5      
                                                                                                   
.size _ZNSsC2ERKSsjjRKSaIcE, .-_ZNSsC2ERKSsjjRKSaIcE


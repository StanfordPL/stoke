  .text
  .globl _ZNSsC2ERKSsjjRKSaIcE
  .type _ZNSsC2ERKSsjjRKSaIcE, @function

#! file-offset 0x47980
#! rip-offset  0x47980
#! capacity    128 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2ERKSsjjRKSaIcE:                                                   #        0x47980  0      
  pushq %rbx                                                              #  1     0x47980  2      
  movl %esi, %esi                                                         #  2     0x47982  2      
  movl %edi, %ebx                                                         #  3     0x47984  2      
  movl %r8d, %r8d                                                         #  4     0x47986  3      
  subl $0x10, %esp                                                        #  5     0x47989  3      
  addq %r15, %rsp                                                         #  6     0x4798c  3      
  movl %esi, %esi                                                         #  7     0x4798f  2      
  movl (%r15,%rsi,1), %edi                                                #  8     0x47991  4      
  leal -0xc(%rdi), %eax                                                   #  9     0x47995  3      
  movl %eax, %eax                                                         #  10    0x47998  2      
  movl (%r15,%rax,1), %esi                                                #  11    0x4799a  4      
  cmpl %esi, %edx                                                         #  12    0x4799e  2      
  nop                                                                     #  13    0x479a0  1      
  ja .L_479e0                                                             #  14    0x479a1  6      
  subl %edx, %esi                                                         #  15    0x479a7  2      
  movb $0x0, (%rsp)                                                       #  16    0x479a9  4      
  cmpl %ecx, %esi                                                         #  17    0x479ad  2      
  cmoval %ecx, %esi                                                       #  18    0x479af  3      
  addl %edx, %esi                                                         #  19    0x479b2  2      
  addl %edi, %esi                                                         #  20    0x479b4  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x479b6  3      
  movl %r8d, %edx                                                         #  22    0x479b9  3      
  nop                                                                     #  23    0x479bc  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x479bd  5      
  movl %ebx, %ebx                                                         #  25    0x479c2  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x479c4  4      
  addl $0x10, %esp                                                        #  27    0x479c8  3      
  addq %r15, %rsp                                                         #  28    0x479cb  3      
  popq %rbx                                                               #  29    0x479ce  2      
  popq %r11                                                               #  30    0x479d0  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x479d3  7      
  addq %r15, %r11                                                         #  32    0x479da  3      
  jmpq %r11                                                               #  33    0x479dd  3      
  nop                                                                     #  34    0x479e0  1      
.L_479e0:                                                                 #        0x479e1  0      
  movl $0x100209f2, %edi                                                  #  35    0x479e1  5      
  nop                                                                     #  36    0x479e6  1      
  nop                                                                     #  37    0x479e7  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x479e8  5      
                                                                                                   
.size _ZNSsC2ERKSsjjRKSaIcE, .-_ZNSsC2ERKSsjjRKSaIcE


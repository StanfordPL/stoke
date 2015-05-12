  .text
  .globl _ZNSsC1ERKSsjj
  .type _ZNSsC1ERKSsjj, @function

#! file-offset 0x47980
#! rip-offset  0x47980
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1ERKSsjj:                                                          #        0x47980  0      
  pushq %rbx                                                              #  1     0x47980  2      
  movl %esi, %esi                                                         #  2     0x47982  2      
  movl %edi, %ebx                                                         #  3     0x47984  2      
  subl $0x20, %esp                                                        #  4     0x47986  3      
  addq %r15, %rsp                                                         #  5     0x47989  3      
  movl %esi, %esi                                                         #  6     0x4798c  2      
  movl (%r15,%rsi,1), %edi                                                #  7     0x4798e  4      
  leal -0xc(%rdi), %eax                                                   #  8     0x47992  3      
  movl %eax, %eax                                                         #  9     0x47995  2      
  movl (%r15,%rax,1), %esi                                                #  10    0x47997  4      
  cmpl %esi, %edx                                                         #  11    0x4799b  2      
  nop                                                                     #  12    0x4799d  1      
  ja .L_479e0                                                             #  13    0x4799e  6      
  subl %edx, %esi                                                         #  14    0x479a4  2      
  leal 0x1f(%rsp), %eax                                                   #  15    0x479a6  4      
  movb $0x0, (%rsp)                                                       #  16    0x479aa  4      
  cmpl %ecx, %esi                                                         #  17    0x479ae  2      
  cmoval %ecx, %esi                                                       #  18    0x479b0  3      
  addl %edx, %esi                                                         #  19    0x479b3  2      
  addl %edi, %esi                                                         #  20    0x479b5  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x479b7  3      
  movl %eax, %edx                                                         #  22    0x479ba  2      
  nop                                                                     #  23    0x479bc  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x479bd  5      
  movl %ebx, %ebx                                                         #  25    0x479c2  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x479c4  4      
  addl $0x20, %esp                                                        #  27    0x479c8  3      
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
  movl %eax, %edi                                                         #  39    0x479ed  2      
  nop                                                                     #  40    0x479ef  1      
  nop                                                                     #  41    0x479f0  1      
  callq ._Unwind_Resume                                                   #  42    0x479f1  5      
                                                                                                   
.size _ZNSsC1ERKSsjj, .-_ZNSsC1ERKSsjj


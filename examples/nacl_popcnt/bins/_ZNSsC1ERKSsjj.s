  .text
  .globl _ZNSsC1ERKSsjj
  .type _ZNSsC1ERKSsjj, @function

#! file-offset 0x47960
#! rip-offset  0x47960
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC1ERKSsjj:                                                          #        0x47960  0      
  pushq %rbx                                                              #  1     0x47960  2      
  movl %esi, %esi                                                         #  2     0x47962  2      
  movl %edi, %ebx                                                         #  3     0x47964  2      
  subl $0x20, %esp                                                        #  4     0x47966  3      
  addq %r15, %rsp                                                         #  5     0x47969  3      
  movl %esi, %esi                                                         #  6     0x4796c  2      
  movl (%r15,%rsi,1), %edi                                                #  7     0x4796e  4      
  leal -0xc(%rdi), %eax                                                   #  8     0x47972  3      
  movl %eax, %eax                                                         #  9     0x47975  2      
  movl (%r15,%rax,1), %esi                                                #  10    0x47977  4      
  cmpl %esi, %edx                                                         #  11    0x4797b  2      
  nop                                                                     #  12    0x4797d  1      
  ja .L_479c0                                                             #  13    0x4797e  6      
  subl %edx, %esi                                                         #  14    0x47984  2      
  leal 0x1f(%rsp), %eax                                                   #  15    0x47986  4      
  movb $0x0, (%rsp)                                                       #  16    0x4798a  4      
  cmpl %ecx, %esi                                                         #  17    0x4798e  2      
  cmoval %ecx, %esi                                                       #  18    0x47990  3      
  addl %edx, %esi                                                         #  19    0x47993  2      
  addl %edi, %esi                                                         #  20    0x47995  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x47997  3      
  movl %eax, %edx                                                         #  22    0x4799a  2      
  nop                                                                     #  23    0x4799c  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x4799d  5      
  movl %ebx, %ebx                                                         #  25    0x479a2  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x479a4  4      
  addl $0x20, %esp                                                        #  27    0x479a8  3      
  addq %r15, %rsp                                                         #  28    0x479ab  3      
  popq %rbx                                                               #  29    0x479ae  2      
  popq %r11                                                               #  30    0x479b0  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x479b3  7      
  addq %r15, %r11                                                         #  32    0x479ba  3      
  jmpq %r11                                                               #  33    0x479bd  3      
  nop                                                                     #  34    0x479c0  1      
.L_479c0:                                                                 #        0x479c1  0      
  movl $0x100209f2, %edi                                                  #  35    0x479c1  5      
  nop                                                                     #  36    0x479c6  1      
  nop                                                                     #  37    0x479c7  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x479c8  5      
  movl %eax, %edi                                                         #  39    0x479cd  2      
  nop                                                                     #  40    0x479cf  1      
  nop                                                                     #  41    0x479d0  1      
  callq ._Unwind_Resume                                                   #  42    0x479d1  5      
                                                                                                   
.size _ZNSsC1ERKSsjj, .-_ZNSsC1ERKSsjj


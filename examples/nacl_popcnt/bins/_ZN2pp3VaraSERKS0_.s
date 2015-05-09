  .text
  .globl _ZN2pp3VaraSERKS0_
  .type _ZN2pp3VaraSERKS0_, @function

#! file-offset 0x2d120
#! rip-offset  0x2d120
#! capacity    288 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZN2pp3VaraSERKS0_:                                    #        0x2d120  0      
  movq %rbx, -0x18(%rsp)                                #  1     0x2d120  5      
  movq %r12, -0x10(%rsp)                                #  2     0x2d125  5      
  movl %edi, %ebx                                       #  3     0x2d12a  2      
  movl %esi, %r12d                                      #  4     0x2d12c  3      
  movq %r13, -0x8(%rsp)                                 #  5     0x2d12f  5      
  subl $0x18, %esp                                      #  6     0x2d134  3      
  addq %r15, %rsp                                       #  7     0x2d137  3      
  cmpl %r12d, %ebx                                      #  8     0x2d13a  3      
  nop                                                   #  9     0x2d13d  1      
  je .L_2d1c0                                           #  10    0x2d13e  6      
  movl %r12d, %r12d                                     #  11    0x2d144  3      
  cmpl $0x4, 0x8(%r15,%r12,1)                           #  12    0x2d147  6      
  movl %ebx, %ebx                                       #  13    0x2d14d  2      
  movzbl 0x18(%r15,%rbx,1), %r13d                       #  14    0x2d14f  6      
  movl %ebx, %ebx                                       #  15    0x2d155  2      
  movb $0x1, 0x18(%r15,%rbx,1)                          #  16    0x2d157  6      
  nop                                                   #  17    0x2d15d  1      
  jg .L_2d200                                           #  18    0x2d15e  6      
  nop                                                   #  19    0x2d164  1      
  nop                                                   #  20    0x2d165  1      
.L_2d180:                                               #        0x2d166  0      
  movl %ebx, %ebx                                       #  21    0x2d166  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                           #  22    0x2d168  6      
  jle .L_2d1a0                                          #  23    0x2d16e  6      
  testb %r13b, %r13b                                    #  24    0x2d174  3      
  je .L_2d1a0                                           #  25    0x2d177  6      
  leal 0x8(%rbx), %edi                                  #  26    0x2d17d  3      
  nop                                                   #  27    0x2d180  1      
  callq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  28    0x2d181  5      
.L_2d1a0:                                               #        0x2d186  0      
  movl %r12d, %r12d                                     #  29    0x2d186  3      
  movq 0x8(%r15,%r12,1), %rax                           #  30    0x2d189  5      
  movl %ebx, %ebx                                       #  31    0x2d18e  2      
  movq %rax, 0x8(%r15,%rbx,1)                           #  32    0x2d190  5      
  movl %r12d, %r12d                                     #  33    0x2d195  3      
  movq 0x10(%r15,%r12,1), %rax                          #  34    0x2d198  5      
  movl %ebx, %ebx                                       #  35    0x2d19d  2      
  movq %rax, 0x10(%r15,%rbx,1)                          #  36    0x2d19f  5      
  xchgw %ax, %ax                                        #  37    0x2d1a4  3      
.L_2d1c0:                                               #        0x2d1a7  0      
  movl %ebx, %eax                                       #  38    0x2d1a7  2      
  movq 0x8(%rsp), %r12                                  #  39    0x2d1a9  5      
  movq (%rsp), %rbx                                     #  40    0x2d1ae  4      
  movq 0x10(%rsp), %r13                                 #  41    0x2d1b2  5      
  addl $0x18, %esp                                      #  42    0x2d1b7  3      
  addq %r15, %rsp                                       #  43    0x2d1ba  3      
  popq %r11                                             #  44    0x2d1bd  3      
  nop                                                   #  45    0x2d1c0  1      
  andl $0xffffffe0, %r11d                               #  46    0x2d1c1  7      
  addq %r15, %r11                                       #  47    0x2d1c8  3      
  jmpq %r11                                             #  48    0x2d1cb  3      
  nop                                                   #  49    0x2d1ce  1      
  nop                                                   #  50    0x2d1cf  1      
.L_2d200:                                               #        0x2d1d0  0      
  leal 0x8(%r12), %edi                                  #  51    0x2d1d0  5      
  nop                                                   #  52    0x2d1d5  1      
  nop                                                   #  53    0x2d1d6  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var   #  54    0x2d1d7  5      
  jmpq .L_2d180                                         #  55    0x2d1dc  5      
  nop                                                   #  56    0x2d1e1  1      
  nop                                                   #  57    0x2d1e2  1      
  nop                                                   #  58    0x2d1e3  1      
                                                                                 
.size _ZN2pp3VaraSERKS0_, .-_ZN2pp3VaraSERKS0_


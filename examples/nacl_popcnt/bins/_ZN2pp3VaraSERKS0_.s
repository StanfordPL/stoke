  .text
  .globl _ZN2pp3VaraSERKS0_
  .type _ZN2pp3VaraSERKS0_, @function

#! file-offset 0x2d140
#! rip-offset  0x2d140
#! capacity    288 bytes

# Text                                                  #  Line  RIP      Bytes  
._ZN2pp3VaraSERKS0_:                                    #        0x2d140  0      
  movq %rbx, -0x18(%rsp)                                #  1     0x2d140  5      
  movq %r12, -0x10(%rsp)                                #  2     0x2d145  5      
  movl %edi, %ebx                                       #  3     0x2d14a  2      
  movl %esi, %r12d                                      #  4     0x2d14c  3      
  movq %r13, -0x8(%rsp)                                 #  5     0x2d14f  5      
  subl $0x18, %esp                                      #  6     0x2d154  3      
  addq %r15, %rsp                                       #  7     0x2d157  3      
  cmpl %r12d, %ebx                                      #  8     0x2d15a  3      
  nop                                                   #  9     0x2d15d  1      
  je .L_2d1e0                                           #  10    0x2d15e  6      
  movl %r12d, %r12d                                     #  11    0x2d164  3      
  cmpl $0x4, 0x8(%r15,%r12,1)                           #  12    0x2d167  6      
  movl %ebx, %ebx                                       #  13    0x2d16d  2      
  movzbl 0x18(%r15,%rbx,1), %r13d                       #  14    0x2d16f  6      
  movl %ebx, %ebx                                       #  15    0x2d175  2      
  movb $0x1, 0x18(%r15,%rbx,1)                          #  16    0x2d177  6      
  nop                                                   #  17    0x2d17d  1      
  jg .L_2d220                                           #  18    0x2d17e  6      
  nop                                                   #  19    0x2d184  1      
  nop                                                   #  20    0x2d185  1      
.L_2d1a0:                                               #        0x2d186  0      
  movl %ebx, %ebx                                       #  21    0x2d186  2      
  cmpl $0x4, 0x8(%r15,%rbx,1)                           #  22    0x2d188  6      
  jle .L_2d1c0                                          #  23    0x2d18e  6      
  testb %r13b, %r13b                                    #  24    0x2d194  3      
  je .L_2d1c0                                           #  25    0x2d197  6      
  leal 0x8(%rbx), %edi                                  #  26    0x2d19d  3      
  nop                                                   #  27    0x2d1a0  1      
  callq ._ZN2pp12_GLOBAL__N_113ReleaseHelperERK6PP_Var  #  28    0x2d1a1  5      
.L_2d1c0:                                               #        0x2d1a6  0      
  movl %r12d, %r12d                                     #  29    0x2d1a6  3      
  movq 0x8(%r15,%r12,1), %rax                           #  30    0x2d1a9  5      
  movl %ebx, %ebx                                       #  31    0x2d1ae  2      
  movq %rax, 0x8(%r15,%rbx,1)                           #  32    0x2d1b0  5      
  movl %r12d, %r12d                                     #  33    0x2d1b5  3      
  movq 0x10(%r15,%r12,1), %rax                          #  34    0x2d1b8  5      
  movl %ebx, %ebx                                       #  35    0x2d1bd  2      
  movq %rax, 0x10(%r15,%rbx,1)                          #  36    0x2d1bf  5      
  xchgw %ax, %ax                                        #  37    0x2d1c4  3      
.L_2d1e0:                                               #        0x2d1c7  0      
  movl %ebx, %eax                                       #  38    0x2d1c7  2      
  movq 0x8(%rsp), %r12                                  #  39    0x2d1c9  5      
  movq (%rsp), %rbx                                     #  40    0x2d1ce  4      
  movq 0x10(%rsp), %r13                                 #  41    0x2d1d2  5      
  addl $0x18, %esp                                      #  42    0x2d1d7  3      
  addq %r15, %rsp                                       #  43    0x2d1da  3      
  popq %r11                                             #  44    0x2d1dd  3      
  nop                                                   #  45    0x2d1e0  1      
  andl $0xffffffe0, %r11d                               #  46    0x2d1e1  7      
  addq %r15, %r11                                       #  47    0x2d1e8  3      
  jmpq %r11                                             #  48    0x2d1eb  3      
  nop                                                   #  49    0x2d1ee  1      
  nop                                                   #  50    0x2d1ef  1      
.L_2d220:                                               #        0x2d1f0  0      
  leal 0x8(%r12), %edi                                  #  51    0x2d1f0  5      
  nop                                                   #  52    0x2d1f5  1      
  nop                                                   #  53    0x2d1f6  1      
  callq ._ZN2pp12_GLOBAL__N_112AddRefHelperERK6PP_Var   #  54    0x2d1f7  5      
  jmpq .L_2d1a0                                         #  55    0x2d1fc  5      
  nop                                                   #  56    0x2d201  1      
  nop                                                   #  57    0x2d202  1      
  nop                                                   #  58    0x2d203  1      
                                                                                 
.size _ZN2pp3VaraSERKS0_, .-_ZN2pp3VaraSERKS0_


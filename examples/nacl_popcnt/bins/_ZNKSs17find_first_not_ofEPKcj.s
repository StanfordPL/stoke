  .text
  .globl _ZNKSs17find_first_not_ofEPKcj
  .type _ZNKSs17find_first_not_ofEPKcj, @function

#! file-offset 0x459a0
#! rip-offset  0x459a0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEPKcj:         #        0x459a0  0      
  movq %r12, -0x10(%rsp)                 #  1     0x459a0  5      
  movl %esi, %r12d                       #  2     0x459a5  3      
  movq %rbx, -0x18(%rsp)                 #  3     0x459a8  5      
  movq %r13, -0x8(%rsp)                  #  4     0x459ad  5      
  movl %edi, %ebx                        #  5     0x459b2  2      
  subl $0x18, %esp                       #  6     0x459b4  3      
  addq %r15, %rsp                        #  7     0x459b7  3      
  movl %edx, %r13d                       #  8     0x459ba  3      
  movl %r12d, %edi                       #  9     0x459bd  3      
  nop                                    #  10    0x459c0  1      
  nop                                    #  11    0x459c1  1      
  callq .strlen                          #  12    0x459c2  5      
  movl %r13d, %edx                       #  13    0x459c7  3      
  movl %r12d, %esi                       #  14    0x459ca  3      
  movl %ebx, %edi                        #  15    0x459cd  2      
  movq 0x8(%rsp), %r12                   #  16    0x459cf  5      
  movq (%rsp), %rbx                      #  17    0x459d4  4      
  movl %eax, %ecx                        #  18    0x459d8  2      
  movq 0x10(%rsp), %r13                  #  19    0x459da  5      
  addl $0x18, %esp                       #  20    0x459df  3      
  addq %r15, %rsp                        #  21    0x459e2  3      
  xchgw %ax, %ax                         #  22    0x459e5  3      
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  23    0x459e8  5      
  nop                                    #  24    0x459ed  1      
  nop                                    #  25    0x459ee  1      
  nop                                    #  26    0x459ef  1      
  nop                                    #  27    0x459f0  1      
  nop                                    #  28    0x459f1  1      
  nop                                    #  29    0x459f2  1      
  nop                                    #  30    0x459f3  1      
  nop                                    #  31    0x459f4  1      
  nop                                    #  32    0x459f5  1      
  nop                                    #  33    0x459f6  1      
  nop                                    #  34    0x459f7  1      
  nop                                    #  35    0x459f8  1      
  nop                                    #  36    0x459f9  1      
  nop                                    #  37    0x459fa  1      
  nop                                    #  38    0x459fb  1      
  nop                                    #  39    0x459fc  1      
  nop                                    #  40    0x459fd  1      
  nop                                    #  41    0x459fe  1      
  nop                                    #  42    0x459ff  1      
  nop                                    #  43    0x45a00  1      
  nop                                    #  44    0x45a01  1      
  nop                                    #  45    0x45a02  1      
  nop                                    #  46    0x45a03  1      
  nop                                    #  47    0x45a04  1      
  nop                                    #  48    0x45a05  1      
  nop                                    #  49    0x45a06  1      
  nop                                    #  50    0x45a07  1      
                                                                  
.size _ZNKSs17find_first_not_ofEPKcj, .-_ZNKSs17find_first_not_ofEPKcj


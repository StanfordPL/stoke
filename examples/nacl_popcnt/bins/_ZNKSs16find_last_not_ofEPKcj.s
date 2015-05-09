  .text
  .globl _ZNKSs16find_last_not_ofEPKcj
  .type _ZNKSs16find_last_not_ofEPKcj, @function

#! file-offset 0x45920
#! rip-offset  0x45920
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEPKcj:         #        0x45920  0      
  movq %r12, -0x10(%rsp)                #  1     0x45920  5      
  movl %esi, %r12d                      #  2     0x45925  3      
  movq %rbx, -0x18(%rsp)                #  3     0x45928  5      
  movq %r13, -0x8(%rsp)                 #  4     0x4592d  5      
  movl %edi, %ebx                       #  5     0x45932  2      
  subl $0x18, %esp                      #  6     0x45934  3      
  addq %r15, %rsp                       #  7     0x45937  3      
  movl %edx, %r13d                      #  8     0x4593a  3      
  movl %r12d, %edi                      #  9     0x4593d  3      
  nop                                   #  10    0x45940  1      
  nop                                   #  11    0x45941  1      
  callq .strlen                         #  12    0x45942  5      
  movl %r13d, %edx                      #  13    0x45947  3      
  movl %r12d, %esi                      #  14    0x4594a  3      
  movl %ebx, %edi                       #  15    0x4594d  2      
  movq 0x8(%rsp), %r12                  #  16    0x4594f  5      
  movq (%rsp), %rbx                     #  17    0x45954  4      
  movl %eax, %ecx                       #  18    0x45958  2      
  movq 0x10(%rsp), %r13                 #  19    0x4595a  5      
  addl $0x18, %esp                      #  20    0x4595f  3      
  addq %r15, %rsp                       #  21    0x45962  3      
  xchgw %ax, %ax                        #  22    0x45965  3      
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  23    0x45968  5      
  nop                                   #  24    0x4596d  1      
  nop                                   #  25    0x4596e  1      
  nop                                   #  26    0x4596f  1      
  nop                                   #  27    0x45970  1      
  nop                                   #  28    0x45971  1      
  nop                                   #  29    0x45972  1      
  nop                                   #  30    0x45973  1      
  nop                                   #  31    0x45974  1      
  nop                                   #  32    0x45975  1      
  nop                                   #  33    0x45976  1      
  nop                                   #  34    0x45977  1      
  nop                                   #  35    0x45978  1      
  nop                                   #  36    0x45979  1      
  nop                                   #  37    0x4597a  1      
  nop                                   #  38    0x4597b  1      
  nop                                   #  39    0x4597c  1      
  nop                                   #  40    0x4597d  1      
  nop                                   #  41    0x4597e  1      
  nop                                   #  42    0x4597f  1      
  nop                                   #  43    0x45980  1      
  nop                                   #  44    0x45981  1      
  nop                                   #  45    0x45982  1      
  nop                                   #  46    0x45983  1      
  nop                                   #  47    0x45984  1      
  nop                                   #  48    0x45985  1      
  nop                                   #  49    0x45986  1      
  nop                                   #  50    0x45987  1      
                                                                 
.size _ZNKSs16find_last_not_ofEPKcj, .-_ZNKSs16find_last_not_ofEPKcj


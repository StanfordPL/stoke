  .text
  .globl _ZNKSs4findEPKcj
  .type _ZNKSs4findEPKcj, @function

#! file-offset 0x458c0
#! rip-offset  0x458c0
#! capacity    128 bytes

# Text                     #  Line  RIP      Bytes  
._ZNKSs4findEPKcj:         #        0x458c0  0      
  movq %r12, -0x10(%rsp)   #  1     0x458c0  5      
  movl %esi, %r12d         #  2     0x458c5  3      
  movq %rbx, -0x18(%rsp)   #  3     0x458c8  5      
  movq %r13, -0x8(%rsp)    #  4     0x458cd  5      
  movl %edi, %ebx          #  5     0x458d2  2      
  subl $0x18, %esp         #  6     0x458d4  3      
  addq %r15, %rsp          #  7     0x458d7  3      
  movl %edx, %r13d         #  8     0x458da  3      
  movl %r12d, %edi         #  9     0x458dd  3      
  nop                      #  10    0x458e0  1      
  nop                      #  11    0x458e1  1      
  callq .strlen            #  12    0x458e2  5      
  movl %r13d, %edx         #  13    0x458e7  3      
  movl %r12d, %esi         #  14    0x458ea  3      
  movl %ebx, %edi          #  15    0x458ed  2      
  movq 0x8(%rsp), %r12     #  16    0x458ef  5      
  movq (%rsp), %rbx        #  17    0x458f4  4      
  movl %eax, %ecx          #  18    0x458f8  2      
  movq 0x10(%rsp), %r13    #  19    0x458fa  5      
  addl $0x18, %esp         #  20    0x458ff  3      
  addq %r15, %rsp          #  21    0x45902  3      
  xchgw %ax, %ax           #  22    0x45905  3      
  jmpq ._ZNKSs4findEPKcjj  #  23    0x45908  5      
  nop                      #  24    0x4590d  1      
  nop                      #  25    0x4590e  1      
  nop                      #  26    0x4590f  1      
  nop                      #  27    0x45910  1      
  nop                      #  28    0x45911  1      
  nop                      #  29    0x45912  1      
  nop                      #  30    0x45913  1      
  nop                      #  31    0x45914  1      
  nop                      #  32    0x45915  1      
  nop                      #  33    0x45916  1      
  nop                      #  34    0x45917  1      
  nop                      #  35    0x45918  1      
  nop                      #  36    0x45919  1      
  nop                      #  37    0x4591a  1      
  nop                      #  38    0x4591b  1      
  nop                      #  39    0x4591c  1      
  nop                      #  40    0x4591d  1      
  nop                      #  41    0x4591e  1      
  nop                      #  42    0x4591f  1      
  nop                      #  43    0x45920  1      
  nop                      #  44    0x45921  1      
  nop                      #  45    0x45922  1      
  nop                      #  46    0x45923  1      
  nop                      #  47    0x45924  1      
  nop                      #  48    0x45925  1      
  nop                      #  49    0x45926  1      
  nop                      #  50    0x45927  1      
                                                    
.size _ZNKSs4findEPKcj, .-_ZNKSs4findEPKcj


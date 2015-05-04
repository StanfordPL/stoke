  .text
  .globl _ZNSs6insertEjPKc
  .type _ZNSs6insertEjPKc, @function

#! file-offset 0x498c0
#! rip-offset  0x498c0
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNSs6insertEjPKc:         #        0x498c0  0      
  movq %r13, -0x8(%rsp)     #  1     0x498c0  5      
  movl %edx, %r13d          #  2     0x498c5  3      
  movq %rbx, -0x18(%rsp)    #  3     0x498c8  5      
  movq %r12, -0x10(%rsp)    #  4     0x498cd  5      
  movl %edi, %ebx           #  5     0x498d2  2      
  subl $0x18, %esp          #  6     0x498d4  3      
  addq %r15, %rsp           #  7     0x498d7  3      
  movl %esi, %r12d          #  8     0x498da  3      
  movl %r13d, %edi          #  9     0x498dd  3      
  nop                       #  10    0x498e0  1      
  nop                       #  11    0x498e1  1      
  callq .strlen             #  12    0x498e2  5      
  movl %r13d, %edx          #  13    0x498e7  3      
  movl %r12d, %esi          #  14    0x498ea  3      
  movl %ebx, %edi           #  15    0x498ed  2      
  movq 0x8(%rsp), %r12      #  16    0x498ef  5      
  movq (%rsp), %rbx         #  17    0x498f4  4      
  movl %eax, %ecx           #  18    0x498f8  2      
  movq 0x10(%rsp), %r13     #  19    0x498fa  5      
  addl $0x18, %esp          #  20    0x498ff  3      
  addq %r15, %rsp           #  21    0x49902  3      
  xchgw %ax, %ax            #  22    0x49905  3      
  jmpq ._ZNSs6insertEjPKcj  #  23    0x49908  5      
  nop                       #  24    0x4990d  1      
  nop                       #  25    0x4990e  1      
  nop                       #  26    0x4990f  1      
  nop                       #  27    0x49910  1      
  nop                       #  28    0x49911  1      
  nop                       #  29    0x49912  1      
  nop                       #  30    0x49913  1      
  nop                       #  31    0x49914  1      
  nop                       #  32    0x49915  1      
  nop                       #  33    0x49916  1      
  nop                       #  34    0x49917  1      
  nop                       #  35    0x49918  1      
  nop                       #  36    0x49919  1      
  nop                       #  37    0x4991a  1      
  nop                       #  38    0x4991b  1      
  nop                       #  39    0x4991c  1      
  nop                       #  40    0x4991d  1      
  nop                       #  41    0x4991e  1      
  nop                       #  42    0x4991f  1      
  nop                       #  43    0x49920  1      
  nop                       #  44    0x49921  1      
  nop                       #  45    0x49922  1      
  nop                       #  46    0x49923  1      
  nop                       #  47    0x49924  1      
  nop                       #  48    0x49925  1      
  nop                       #  49    0x49926  1      
  nop                       #  50    0x49927  1      
                                                     
.size _ZNSs6insertEjPKc, .-_ZNSs6insertEjPKc


  .text
  .globl _ZNKSs4findEPKcj
  .type _ZNKSs4findEPKcj, @function

#! file-offset 0x45940
#! rip-offset  0x45940
#! capacity    128 bytes

# Text                     #  Line  RIP      Bytes  
._ZNKSs4findEPKcj:         #        0x45940  0      
  movq %r12, -0x10(%rsp)   #  1     0x45940  5      
  movl %esi, %r12d         #  2     0x45945  3      
  movq %rbx, -0x18(%rsp)   #  3     0x45948  5      
  movq %r13, -0x8(%rsp)    #  4     0x4594d  5      
  movl %edi, %ebx          #  5     0x45952  2      
  subl $0x18, %esp         #  6     0x45954  3      
  addq %r15, %rsp          #  7     0x45957  3      
  movl %edx, %r13d         #  8     0x4595a  3      
  movl %r12d, %edi         #  9     0x4595d  3      
  nop                      #  10    0x45960  1      
  nop                      #  11    0x45961  1      
  callq .strlen            #  12    0x45962  5      
  movl %r13d, %edx         #  13    0x45967  3      
  movl %r12d, %esi         #  14    0x4596a  3      
  movl %ebx, %edi          #  15    0x4596d  2      
  movq 0x8(%rsp), %r12     #  16    0x4596f  5      
  movq (%rsp), %rbx        #  17    0x45974  4      
  movl %eax, %ecx          #  18    0x45978  2      
  movq 0x10(%rsp), %r13    #  19    0x4597a  5      
  addl $0x18, %esp         #  20    0x4597f  3      
  addq %r15, %rsp          #  21    0x45982  3      
  xchgw %ax, %ax           #  22    0x45985  3      
  jmpq ._ZNKSs4findEPKcjj  #  23    0x45988  5      
  nop                      #  24    0x4598d  1      
  nop                      #  25    0x4598e  1      
  nop                      #  26    0x4598f  1      
  nop                      #  27    0x45990  1      
  nop                      #  28    0x45991  1      
  nop                      #  29    0x45992  1      
  nop                      #  30    0x45993  1      
  nop                      #  31    0x45994  1      
  nop                      #  32    0x45995  1      
  nop                      #  33    0x45996  1      
  nop                      #  34    0x45997  1      
  nop                      #  35    0x45998  1      
  nop                      #  36    0x45999  1      
  nop                      #  37    0x4599a  1      
  nop                      #  38    0x4599b  1      
  nop                      #  39    0x4599c  1      
  nop                      #  40    0x4599d  1      
  nop                      #  41    0x4599e  1      
  nop                      #  42    0x4599f  1      
  nop                      #  43    0x459a0  1      
  nop                      #  44    0x459a1  1      
  nop                      #  45    0x459a2  1      
  nop                      #  46    0x459a3  1      
  nop                      #  47    0x459a4  1      
  nop                      #  48    0x459a5  1      
  nop                      #  49    0x459a6  1      
  nop                      #  50    0x459a7  1      
                                                    
.size _ZNKSs4findEPKcj, .-_ZNKSs4findEPKcj


  .text
  .globl _ZNKSs5rfindEPKcj
  .type _ZNKSs5rfindEPKcj, @function

#! file-offset 0x45840
#! rip-offset  0x45840
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5rfindEPKcj:         #        0x45840  0      
  movq %r12, -0x10(%rsp)    #  1     0x45840  5      
  movl %esi, %r12d          #  2     0x45845  3      
  movq %rbx, -0x18(%rsp)    #  3     0x45848  5      
  movq %r13, -0x8(%rsp)     #  4     0x4584d  5      
  movl %edi, %ebx           #  5     0x45852  2      
  subl $0x18, %esp          #  6     0x45854  3      
  addq %r15, %rsp           #  7     0x45857  3      
  movl %edx, %r13d          #  8     0x4585a  3      
  movl %r12d, %edi          #  9     0x4585d  3      
  nop                       #  10    0x45860  1      
  nop                       #  11    0x45861  1      
  callq .strlen             #  12    0x45862  5      
  movl %r13d, %edx          #  13    0x45867  3      
  movl %r12d, %esi          #  14    0x4586a  3      
  movl %ebx, %edi           #  15    0x4586d  2      
  movq 0x8(%rsp), %r12      #  16    0x4586f  5      
  movq (%rsp), %rbx         #  17    0x45874  4      
  movl %eax, %ecx           #  18    0x45878  2      
  movq 0x10(%rsp), %r13     #  19    0x4587a  5      
  addl $0x18, %esp          #  20    0x4587f  3      
  addq %r15, %rsp           #  21    0x45882  3      
  xchgw %ax, %ax            #  22    0x45885  3      
  jmpq ._ZNKSs5rfindEPKcjj  #  23    0x45888  5      
  nop                       #  24    0x4588d  1      
  nop                       #  25    0x4588e  1      
  nop                       #  26    0x4588f  1      
  nop                       #  27    0x45890  1      
  nop                       #  28    0x45891  1      
  nop                       #  29    0x45892  1      
  nop                       #  30    0x45893  1      
  nop                       #  31    0x45894  1      
  nop                       #  32    0x45895  1      
  nop                       #  33    0x45896  1      
  nop                       #  34    0x45897  1      
  nop                       #  35    0x45898  1      
  nop                       #  36    0x45899  1      
  nop                       #  37    0x4589a  1      
  nop                       #  38    0x4589b  1      
  nop                       #  39    0x4589c  1      
  nop                       #  40    0x4589d  1      
  nop                       #  41    0x4589e  1      
  nop                       #  42    0x4589f  1      
  nop                       #  43    0x458a0  1      
  nop                       #  44    0x458a1  1      
  nop                       #  45    0x458a2  1      
  nop                       #  46    0x458a3  1      
  nop                       #  47    0x458a4  1      
  nop                       #  48    0x458a5  1      
  nop                       #  49    0x458a6  1      
  nop                       #  50    0x458a7  1      
                                                     
.size _ZNKSs5rfindEPKcj, .-_ZNKSs5rfindEPKcj


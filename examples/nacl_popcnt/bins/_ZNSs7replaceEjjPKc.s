  .text
  .globl _ZNSs7replaceEjjPKc
  .type _ZNSs7replaceEjjPKc, @function

#! file-offset 0x491a0
#! rip-offset  0x491a0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7replaceEjjPKc:         #        0x491a0  0      
  movq %r14, -0x8(%rsp)       #  1     0x491a0  5      
  movl %ecx, %r14d            #  2     0x491a5  3      
  movq %rbx, -0x20(%rsp)      #  3     0x491a8  5      
  movq %r12, -0x18(%rsp)      #  4     0x491ad  5      
  movq %r13, -0x10(%rsp)      #  5     0x491b2  5      
  movl %esi, %r12d            #  6     0x491b7  3      
  subl $0x28, %esp            #  7     0x491ba  3      
  addq %r15, %rsp             #  8     0x491bd  3      
  movl %edx, %r13d            #  9     0x491c0  3      
  movl %edi, %ebx             #  10    0x491c3  2      
  movl %r14d, %edi            #  11    0x491c5  3      
  nop                         #  12    0x491c8  1      
  nop                         #  13    0x491c9  1      
  callq .strlen               #  14    0x491ca  5      
  movl %r14d, %ecx            #  15    0x491cf  3      
  movl %r13d, %edx            #  16    0x491d2  3      
  movl %r12d, %esi            #  17    0x491d5  3      
  movl %ebx, %edi             #  18    0x491d8  2      
  movq 0x10(%rsp), %r12       #  19    0x491da  5      
  movq 0x8(%rsp), %rbx        #  20    0x491df  5      
  movq 0x18(%rsp), %r13       #  21    0x491e4  5      
  movq 0x20(%rsp), %r14       #  22    0x491e9  5      
  nop                         #  23    0x491ee  1      
  movl %eax, %r8d             #  24    0x491ef  3      
  addl $0x28, %esp            #  25    0x491f2  3      
  addq %r15, %rsp             #  26    0x491f5  3      
  jmpq ._ZNSs7replaceEjjPKcj  #  27    0x491f8  5      
  nop                         #  28    0x491fd  1      
  nop                         #  29    0x491fe  1      
  nop                         #  30    0x491ff  1      
  nop                         #  31    0x49200  1      
  nop                         #  32    0x49201  1      
  nop                         #  33    0x49202  1      
  nop                         #  34    0x49203  1      
  nop                         #  35    0x49204  1      
  nop                         #  36    0x49205  1      
  nop                         #  37    0x49206  1      
  nop                         #  38    0x49207  1      
  nop                         #  39    0x49208  1      
  nop                         #  40    0x49209  1      
  nop                         #  41    0x4920a  1      
  nop                         #  42    0x4920b  1      
  nop                         #  43    0x4920c  1      
  nop                         #  44    0x4920d  1      
  nop                         #  45    0x4920e  1      
                                                       
.size _ZNSs7replaceEjjPKc, .-_ZNSs7replaceEjjPKc


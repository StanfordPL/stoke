  .text
  .globl _ZNSs7replaceEjjPKc
  .type _ZNSs7replaceEjjPKc, @function

#! file-offset 0x491c0
#! rip-offset  0x491c0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
._ZNSs7replaceEjjPKc:         #        0x491c0  0      
  movq %r14, -0x8(%rsp)       #  1     0x491c0  5      
  movl %ecx, %r14d            #  2     0x491c5  3      
  movq %rbx, -0x20(%rsp)      #  3     0x491c8  5      
  movq %r12, -0x18(%rsp)      #  4     0x491cd  5      
  movq %r13, -0x10(%rsp)      #  5     0x491d2  5      
  movl %esi, %r12d            #  6     0x491d7  3      
  subl $0x28, %esp            #  7     0x491da  3      
  addq %r15, %rsp             #  8     0x491dd  3      
  movl %edx, %r13d            #  9     0x491e0  3      
  movl %edi, %ebx             #  10    0x491e3  2      
  movl %r14d, %edi            #  11    0x491e5  3      
  nop                         #  12    0x491e8  1      
  nop                         #  13    0x491e9  1      
  callq .strlen               #  14    0x491ea  5      
  movl %r14d, %ecx            #  15    0x491ef  3      
  movl %r13d, %edx            #  16    0x491f2  3      
  movl %r12d, %esi            #  17    0x491f5  3      
  movl %ebx, %edi             #  18    0x491f8  2      
  movq 0x10(%rsp), %r12       #  19    0x491fa  5      
  movq 0x8(%rsp), %rbx        #  20    0x491ff  5      
  movq 0x18(%rsp), %r13       #  21    0x49204  5      
  movq 0x20(%rsp), %r14       #  22    0x49209  5      
  nop                         #  23    0x4920e  1      
  movl %eax, %r8d             #  24    0x4920f  3      
  addl $0x28, %esp            #  25    0x49212  3      
  addq %r15, %rsp             #  26    0x49215  3      
  jmpq ._ZNSs7replaceEjjPKcj  #  27    0x49218  5      
  nop                         #  28    0x4921d  1      
  nop                         #  29    0x4921e  1      
  nop                         #  30    0x4921f  1      
  nop                         #  31    0x49220  1      
  nop                         #  32    0x49221  1      
  nop                         #  33    0x49222  1      
  nop                         #  34    0x49223  1      
  nop                         #  35    0x49224  1      
  nop                         #  36    0x49225  1      
  nop                         #  37    0x49226  1      
  nop                         #  38    0x49227  1      
  nop                         #  39    0x49228  1      
  nop                         #  40    0x49229  1      
  nop                         #  41    0x4922a  1      
  nop                         #  42    0x4922b  1      
  nop                         #  43    0x4922c  1      
  nop                         #  44    0x4922d  1      
  nop                         #  45    0x4922e  1      
                                                       
.size _ZNSs7replaceEjjPKc, .-_ZNSs7replaceEjjPKc


  .text
  .globl _ZNKSs16find_last_not_ofEPKcj
  .type _ZNKSs16find_last_not_ofEPKcj, @function

#! file-offset 0x459c0
#! rip-offset  0x459c0
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEPKcj:         #        0x459c0  0      
  movq %r12, -0x10(%rsp)                #  1     0x459c0  5      
  movl %esi, %r12d                      #  2     0x459c5  3      
  movq %rbx, -0x18(%rsp)                #  3     0x459c8  5      
  movq %r13, -0x8(%rsp)                 #  4     0x459cd  5      
  movl %edi, %ebx                       #  5     0x459d2  2      
  subl $0x18, %esp                      #  6     0x459d4  3      
  addq %r15, %rsp                       #  7     0x459d7  3      
  movl %edx, %r13d                      #  8     0x459da  3      
  movl %r12d, %edi                      #  9     0x459dd  3      
  nop                                   #  10    0x459e0  1      
  nop                                   #  11    0x459e1  1      
  callq .strlen                         #  12    0x459e2  5      
  movl %r13d, %edx                      #  13    0x459e7  3      
  movl %r12d, %esi                      #  14    0x459ea  3      
  movl %ebx, %edi                       #  15    0x459ed  2      
  movq 0x8(%rsp), %r12                  #  16    0x459ef  5      
  movq (%rsp), %rbx                     #  17    0x459f4  4      
  movl %eax, %ecx                       #  18    0x459f8  2      
  movq 0x10(%rsp), %r13                 #  19    0x459fa  5      
  addl $0x18, %esp                      #  20    0x459ff  3      
  addq %r15, %rsp                       #  21    0x45a02  3      
  xchgw %ax, %ax                        #  22    0x45a05  3      
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  23    0x45a08  5      
  nop                                   #  24    0x45a0d  1      
  nop                                   #  25    0x45a0e  1      
  nop                                   #  26    0x45a0f  1      
  nop                                   #  27    0x45a10  1      
  nop                                   #  28    0x45a11  1      
  nop                                   #  29    0x45a12  1      
  nop                                   #  30    0x45a13  1      
  nop                                   #  31    0x45a14  1      
  nop                                   #  32    0x45a15  1      
  nop                                   #  33    0x45a16  1      
  nop                                   #  34    0x45a17  1      
  nop                                   #  35    0x45a18  1      
  nop                                   #  36    0x45a19  1      
  nop                                   #  37    0x45a1a  1      
  nop                                   #  38    0x45a1b  1      
  nop                                   #  39    0x45a1c  1      
  nop                                   #  40    0x45a1d  1      
  nop                                   #  41    0x45a1e  1      
  nop                                   #  42    0x45a1f  1      
  nop                                   #  43    0x45a20  1      
  nop                                   #  44    0x45a21  1      
  nop                                   #  45    0x45a22  1      
  nop                                   #  46    0x45a23  1      
  nop                                   #  47    0x45a24  1      
  nop                                   #  48    0x45a25  1      
  nop                                   #  49    0x45a26  1      
  nop                                   #  50    0x45a27  1      
                                                                 
.size _ZNKSs16find_last_not_ofEPKcj, .-_ZNKSs16find_last_not_ofEPKcj


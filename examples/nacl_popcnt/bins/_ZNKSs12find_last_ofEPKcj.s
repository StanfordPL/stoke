  .text
  .globl _ZNKSs12find_last_ofEPKcj
  .type _ZNKSs12find_last_ofEPKcj, @function

#! file-offset 0x45a20
#! rip-offset  0x45a20
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  
._ZNKSs12find_last_ofEPKcj:         #        0x45a20  0      
  movq %r12, -0x10(%rsp)            #  1     0x45a20  5      
  movl %esi, %r12d                  #  2     0x45a25  3      
  movq %rbx, -0x18(%rsp)            #  3     0x45a28  5      
  movq %r13, -0x8(%rsp)             #  4     0x45a2d  5      
  movl %edi, %ebx                   #  5     0x45a32  2      
  subl $0x18, %esp                  #  6     0x45a34  3      
  addq %r15, %rsp                   #  7     0x45a37  3      
  movl %edx, %r13d                  #  8     0x45a3a  3      
  movl %r12d, %edi                  #  9     0x45a3d  3      
  nop                               #  10    0x45a40  1      
  nop                               #  11    0x45a41  1      
  callq .strlen                     #  12    0x45a42  5      
  movl %r13d, %edx                  #  13    0x45a47  3      
  movl %r12d, %esi                  #  14    0x45a4a  3      
  movl %ebx, %edi                   #  15    0x45a4d  2      
  movq 0x8(%rsp), %r12              #  16    0x45a4f  5      
  movq (%rsp), %rbx                 #  17    0x45a54  4      
  movl %eax, %ecx                   #  18    0x45a58  2      
  movq 0x10(%rsp), %r13             #  19    0x45a5a  5      
  addl $0x18, %esp                  #  20    0x45a5f  3      
  addq %r15, %rsp                   #  21    0x45a62  3      
  xchgw %ax, %ax                    #  22    0x45a65  3      
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  23    0x45a68  5      
  nop                               #  24    0x45a6d  1      
  nop                               #  25    0x45a6e  1      
  nop                               #  26    0x45a6f  1      
  nop                               #  27    0x45a70  1      
  nop                               #  28    0x45a71  1      
  nop                               #  29    0x45a72  1      
  nop                               #  30    0x45a73  1      
  nop                               #  31    0x45a74  1      
  nop                               #  32    0x45a75  1      
  nop                               #  33    0x45a76  1      
  nop                               #  34    0x45a77  1      
  nop                               #  35    0x45a78  1      
  nop                               #  36    0x45a79  1      
  nop                               #  37    0x45a7a  1      
  nop                               #  38    0x45a7b  1      
  nop                               #  39    0x45a7c  1      
  nop                               #  40    0x45a7d  1      
  nop                               #  41    0x45a7e  1      
  nop                               #  42    0x45a7f  1      
  nop                               #  43    0x45a80  1      
  nop                               #  44    0x45a81  1      
  nop                               #  45    0x45a82  1      
  nop                               #  46    0x45a83  1      
  nop                               #  47    0x45a84  1      
  nop                               #  48    0x45a85  1      
  nop                               #  49    0x45a86  1      
  nop                               #  50    0x45a87  1      
                                                             
.size _ZNKSs12find_last_ofEPKcj, .-_ZNKSs12find_last_ofEPKcj


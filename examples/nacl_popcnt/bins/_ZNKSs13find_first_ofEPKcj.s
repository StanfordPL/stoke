  .text
  .globl _ZNKSs13find_first_ofEPKcj
  .type _ZNKSs13find_first_ofEPKcj, @function

#! file-offset 0x45ac0
#! rip-offset  0x45ac0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs13find_first_ofEPKcj:         #        0x45ac0  0      
  movq %r12, -0x10(%rsp)             #  1     0x45ac0  5      
  movl %esi, %r12d                   #  2     0x45ac5  3      
  movq %rbx, -0x18(%rsp)             #  3     0x45ac8  5      
  movq %r13, -0x8(%rsp)              #  4     0x45acd  5      
  movl %edi, %ebx                    #  5     0x45ad2  2      
  subl $0x18, %esp                   #  6     0x45ad4  3      
  addq %r15, %rsp                    #  7     0x45ad7  3      
  movl %edx, %r13d                   #  8     0x45ada  3      
  movl %r12d, %edi                   #  9     0x45add  3      
  nop                                #  10    0x45ae0  1      
  nop                                #  11    0x45ae1  1      
  callq .strlen                      #  12    0x45ae2  5      
  movl %r13d, %edx                   #  13    0x45ae7  3      
  movl %r12d, %esi                   #  14    0x45aea  3      
  movl %ebx, %edi                    #  15    0x45aed  2      
  movq 0x8(%rsp), %r12               #  16    0x45aef  5      
  movq (%rsp), %rbx                  #  17    0x45af4  4      
  movl %eax, %ecx                    #  18    0x45af8  2      
  movq 0x10(%rsp), %r13              #  19    0x45afa  5      
  addl $0x18, %esp                   #  20    0x45aff  3      
  addq %r15, %rsp                    #  21    0x45b02  3      
  xchgw %ax, %ax                     #  22    0x45b05  3      
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  23    0x45b08  5      
  nop                                #  24    0x45b0d  1      
  nop                                #  25    0x45b0e  1      
  nop                                #  26    0x45b0f  1      
  nop                                #  27    0x45b10  1      
  nop                                #  28    0x45b11  1      
  nop                                #  29    0x45b12  1      
  nop                                #  30    0x45b13  1      
  nop                                #  31    0x45b14  1      
  nop                                #  32    0x45b15  1      
  nop                                #  33    0x45b16  1      
  nop                                #  34    0x45b17  1      
  nop                                #  35    0x45b18  1      
  nop                                #  36    0x45b19  1      
  nop                                #  37    0x45b1a  1      
  nop                                #  38    0x45b1b  1      
  nop                                #  39    0x45b1c  1      
  nop                                #  40    0x45b1d  1      
  nop                                #  41    0x45b1e  1      
  nop                                #  42    0x45b1f  1      
  nop                                #  43    0x45b20  1      
  nop                                #  44    0x45b21  1      
  nop                                #  45    0x45b22  1      
  nop                                #  46    0x45b23  1      
  nop                                #  47    0x45b24  1      
  nop                                #  48    0x45b25  1      
  nop                                #  49    0x45b26  1      
  nop                                #  50    0x45b27  1      
                                                              
.size _ZNKSs13find_first_ofEPKcj, .-_ZNKSs13find_first_ofEPKcj


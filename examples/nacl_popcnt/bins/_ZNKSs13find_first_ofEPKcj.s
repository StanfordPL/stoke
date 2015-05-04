  .text
  .globl _ZNKSs13find_first_ofEPKcj
  .type _ZNKSs13find_first_ofEPKcj, @function

#! file-offset 0x45b40
#! rip-offset  0x45b40
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs13find_first_ofEPKcj:         #        0x45b40  0      
  movq %r12, -0x10(%rsp)             #  1     0x45b40  5      
  movl %esi, %r12d                   #  2     0x45b45  3      
  movq %rbx, -0x18(%rsp)             #  3     0x45b48  5      
  movq %r13, -0x8(%rsp)              #  4     0x45b4d  5      
  movl %edi, %ebx                    #  5     0x45b52  2      
  subl $0x18, %esp                   #  6     0x45b54  3      
  addq %r15, %rsp                    #  7     0x45b57  3      
  movl %edx, %r13d                   #  8     0x45b5a  3      
  movl %r12d, %edi                   #  9     0x45b5d  3      
  nop                                #  10    0x45b60  1      
  nop                                #  11    0x45b61  1      
  callq .strlen                      #  12    0x45b62  5      
  movl %r13d, %edx                   #  13    0x45b67  3      
  movl %r12d, %esi                   #  14    0x45b6a  3      
  movl %ebx, %edi                    #  15    0x45b6d  2      
  movq 0x8(%rsp), %r12               #  16    0x45b6f  5      
  movq (%rsp), %rbx                  #  17    0x45b74  4      
  movl %eax, %ecx                    #  18    0x45b78  2      
  movq 0x10(%rsp), %r13              #  19    0x45b7a  5      
  addl $0x18, %esp                   #  20    0x45b7f  3      
  addq %r15, %rsp                    #  21    0x45b82  3      
  xchgw %ax, %ax                     #  22    0x45b85  3      
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  23    0x45b88  5      
  nop                                #  24    0x45b8d  1      
  nop                                #  25    0x45b8e  1      
  nop                                #  26    0x45b8f  1      
  nop                                #  27    0x45b90  1      
  nop                                #  28    0x45b91  1      
  nop                                #  29    0x45b92  1      
  nop                                #  30    0x45b93  1      
  nop                                #  31    0x45b94  1      
  nop                                #  32    0x45b95  1      
  nop                                #  33    0x45b96  1      
  nop                                #  34    0x45b97  1      
  nop                                #  35    0x45b98  1      
  nop                                #  36    0x45b99  1      
  nop                                #  37    0x45b9a  1      
  nop                                #  38    0x45b9b  1      
  nop                                #  39    0x45b9c  1      
  nop                                #  40    0x45b9d  1      
  nop                                #  41    0x45b9e  1      
  nop                                #  42    0x45b9f  1      
  nop                                #  43    0x45ba0  1      
  nop                                #  44    0x45ba1  1      
  nop                                #  45    0x45ba2  1      
  nop                                #  46    0x45ba3  1      
  nop                                #  47    0x45ba4  1      
  nop                                #  48    0x45ba5  1      
  nop                                #  49    0x45ba6  1      
  nop                                #  50    0x45ba7  1      
                                                              
.size _ZNKSs13find_first_ofEPKcj, .-_ZNKSs13find_first_ofEPKcj


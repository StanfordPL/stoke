  .text
  .globl _ZNKSs17find_first_not_ofEPKcj
  .type _ZNKSs17find_first_not_ofEPKcj, @function

#! file-offset 0x45a40
#! rip-offset  0x45a40
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEPKcj:         #        0x45a40  0      
  movq %r12, -0x10(%rsp)                 #  1     0x45a40  5      
  movl %esi, %r12d                       #  2     0x45a45  3      
  movq %rbx, -0x18(%rsp)                 #  3     0x45a48  5      
  movq %r13, -0x8(%rsp)                  #  4     0x45a4d  5      
  movl %edi, %ebx                        #  5     0x45a52  2      
  subl $0x18, %esp                       #  6     0x45a54  3      
  addq %r15, %rsp                        #  7     0x45a57  3      
  movl %edx, %r13d                       #  8     0x45a5a  3      
  movl %r12d, %edi                       #  9     0x45a5d  3      
  nop                                    #  10    0x45a60  1      
  nop                                    #  11    0x45a61  1      
  callq .strlen                          #  12    0x45a62  5      
  movl %r13d, %edx                       #  13    0x45a67  3      
  movl %r12d, %esi                       #  14    0x45a6a  3      
  movl %ebx, %edi                        #  15    0x45a6d  2      
  movq 0x8(%rsp), %r12                   #  16    0x45a6f  5      
  movq (%rsp), %rbx                      #  17    0x45a74  4      
  movl %eax, %ecx                        #  18    0x45a78  2      
  movq 0x10(%rsp), %r13                  #  19    0x45a7a  5      
  addl $0x18, %esp                       #  20    0x45a7f  3      
  addq %r15, %rsp                        #  21    0x45a82  3      
  xchgw %ax, %ax                         #  22    0x45a85  3      
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  23    0x45a88  5      
  nop                                    #  24    0x45a8d  1      
  nop                                    #  25    0x45a8e  1      
  nop                                    #  26    0x45a8f  1      
  nop                                    #  27    0x45a90  1      
  nop                                    #  28    0x45a91  1      
  nop                                    #  29    0x45a92  1      
  nop                                    #  30    0x45a93  1      
  nop                                    #  31    0x45a94  1      
  nop                                    #  32    0x45a95  1      
  nop                                    #  33    0x45a96  1      
  nop                                    #  34    0x45a97  1      
  nop                                    #  35    0x45a98  1      
  nop                                    #  36    0x45a99  1      
  nop                                    #  37    0x45a9a  1      
  nop                                    #  38    0x45a9b  1      
  nop                                    #  39    0x45a9c  1      
  nop                                    #  40    0x45a9d  1      
  nop                                    #  41    0x45a9e  1      
  nop                                    #  42    0x45a9f  1      
  nop                                    #  43    0x45aa0  1      
  nop                                    #  44    0x45aa1  1      
  nop                                    #  45    0x45aa2  1      
  nop                                    #  46    0x45aa3  1      
  nop                                    #  47    0x45aa4  1      
  nop                                    #  48    0x45aa5  1      
  nop                                    #  49    0x45aa6  1      
  nop                                    #  50    0x45aa7  1      
                                                                  
.size _ZNKSs17find_first_not_ofEPKcj, .-_ZNKSs17find_first_not_ofEPKcj


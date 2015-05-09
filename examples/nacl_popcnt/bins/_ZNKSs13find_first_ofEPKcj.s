  .text
  .globl _ZNKSs13find_first_ofEPKcj
  .type _ZNKSs13find_first_ofEPKcj, @function

#! file-offset 0x45aa0
#! rip-offset  0x45aa0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
._ZNKSs13find_first_ofEPKcj:         #        0x45aa0  0      
  movq %r12, -0x10(%rsp)             #  1     0x45aa0  5      
  movl %esi, %r12d                   #  2     0x45aa5  3      
  movq %rbx, -0x18(%rsp)             #  3     0x45aa8  5      
  movq %r13, -0x8(%rsp)              #  4     0x45aad  5      
  movl %edi, %ebx                    #  5     0x45ab2  2      
  subl $0x18, %esp                   #  6     0x45ab4  3      
  addq %r15, %rsp                    #  7     0x45ab7  3      
  movl %edx, %r13d                   #  8     0x45aba  3      
  movl %r12d, %edi                   #  9     0x45abd  3      
  nop                                #  10    0x45ac0  1      
  nop                                #  11    0x45ac1  1      
  callq .strlen                      #  12    0x45ac2  5      
  movl %r13d, %edx                   #  13    0x45ac7  3      
  movl %r12d, %esi                   #  14    0x45aca  3      
  movl %ebx, %edi                    #  15    0x45acd  2      
  movq 0x8(%rsp), %r12               #  16    0x45acf  5      
  movq (%rsp), %rbx                  #  17    0x45ad4  4      
  movl %eax, %ecx                    #  18    0x45ad8  2      
  movq 0x10(%rsp), %r13              #  19    0x45ada  5      
  addl $0x18, %esp                   #  20    0x45adf  3      
  addq %r15, %rsp                    #  21    0x45ae2  3      
  xchgw %ax, %ax                     #  22    0x45ae5  3      
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  23    0x45ae8  5      
  nop                                #  24    0x45aed  1      
  nop                                #  25    0x45aee  1      
  nop                                #  26    0x45aef  1      
  nop                                #  27    0x45af0  1      
  nop                                #  28    0x45af1  1      
  nop                                #  29    0x45af2  1      
  nop                                #  30    0x45af3  1      
  nop                                #  31    0x45af4  1      
  nop                                #  32    0x45af5  1      
  nop                                #  33    0x45af6  1      
  nop                                #  34    0x45af7  1      
  nop                                #  35    0x45af8  1      
  nop                                #  36    0x45af9  1      
  nop                                #  37    0x45afa  1      
  nop                                #  38    0x45afb  1      
  nop                                #  39    0x45afc  1      
  nop                                #  40    0x45afd  1      
  nop                                #  41    0x45afe  1      
  nop                                #  42    0x45aff  1      
  nop                                #  43    0x45b00  1      
  nop                                #  44    0x45b01  1      
  nop                                #  45    0x45b02  1      
  nop                                #  46    0x45b03  1      
  nop                                #  47    0x45b04  1      
  nop                                #  48    0x45b05  1      
  nop                                #  49    0x45b06  1      
  nop                                #  50    0x45b07  1      
                                                              
.size _ZNKSs13find_first_ofEPKcj, .-_ZNKSs13find_first_ofEPKcj


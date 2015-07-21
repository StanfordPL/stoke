  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE3endEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE3endEv, @function

#! file-offset 0x114e00
#! rip-offset  0xd4e00
#! capacity    32 bytes

# Text                                    #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE3endEv:  #        0xd4e00  0      OPC=0     
  movl %edi, %edi                         #  1     0xd4e00  2      OPC=1157  
  movl %edi, %edi                         #  2     0xd4e02  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                #  3     0xd4e04  4      OPC=1156  
  popq %r11                               #  4     0xd4e08  2      OPC=1694  
  leal -0xc(%rax), %edx                   #  5     0xd4e0a  3      OPC=1066  
  movl %edx, %edx                         #  6     0xd4e0d  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                #  7     0xd4e0f  4      OPC=1156  
  leal (%rax,%rdx,4), %eax                #  8     0xd4e13  3      OPC=1066  
  andl $0xffffffe0, %r11d                 #  9     0xd4e16  7      OPC=131   
  nop                                     #  10    0xd4e1d  1      OPC=1343  
  nop                                     #  11    0xd4e1e  1      OPC=1343  
  nop                                     #  12    0xd4e1f  1      OPC=1343  
  nop                                     #  13    0xd4e20  1      OPC=1343  
  addq %r15, %r11                         #  14    0xd4e21  3      OPC=72    
  jmpq %r11                               #  15    0xd4e24  3      OPC=928   
                                                                             
.size _ZNKSbIwSt11char_traitsIwESaIwEE3endEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE3endEv


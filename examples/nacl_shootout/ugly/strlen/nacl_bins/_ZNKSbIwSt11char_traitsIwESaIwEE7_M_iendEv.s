  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv, @function

#! file-offset 0x114ca0
#! rip-offset  0xd4ca0
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv:  #        0xd4ca0  0      OPC=0     
  movl %edi, %edi                             #  1     0xd4ca0  2      OPC=1157  
  movl %edi, %edi                             #  2     0xd4ca2  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                    #  3     0xd4ca4  4      OPC=1156  
  popq %r11                                   #  4     0xd4ca8  2      OPC=1694  
  leal -0xc(%rax), %edx                       #  5     0xd4caa  3      OPC=1066  
  movl %edx, %edx                             #  6     0xd4cad  2      OPC=1157  
  movl (%r15,%rdx,1), %edx                    #  7     0xd4caf  4      OPC=1156  
  leal (%rax,%rdx,4), %eax                    #  8     0xd4cb3  3      OPC=1066  
  andl $0xffffffe0, %r11d                     #  9     0xd4cb6  7      OPC=131   
  nop                                         #  10    0xd4cbd  1      OPC=1343  
  nop                                         #  11    0xd4cbe  1      OPC=1343  
  nop                                         #  12    0xd4cbf  1      OPC=1343  
  nop                                         #  13    0xd4cc0  1      OPC=1343  
  addq %r15, %r11                             #  14    0xd4cc1  3      OPC=72    
  jmpq %r11                                   #  15    0xd4cc4  3      OPC=928   
                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv, .-_ZNKSbIwSt11char_traitsIwESaIwEE7_M_iendEv


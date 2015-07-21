  .text
  .globl _ZNKSs7_M_iendEv
  .type _ZNKSs7_M_iendEv, @function

#! file-offset 0xe9d60
#! rip-offset  0xa9d60
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs7_M_iendEv:          #        0xa9d60  0      OPC=0     
  movl %edi, %edi           #  1     0xa9d60  2      OPC=1157  
  movl %edi, %edi           #  2     0xa9d62  2      OPC=1157  
  movl (%r15,%rdi,1), %eax  #  3     0xa9d64  4      OPC=1156  
  popq %r11                 #  4     0xa9d68  2      OPC=1694  
  leal -0xc(%rax), %edx     #  5     0xa9d6a  3      OPC=1066  
  movl %edx, %edx           #  6     0xa9d6d  2      OPC=1157  
  addl (%r15,%rdx,1), %eax  #  7     0xa9d6f  4      OPC=66    
  andl $0xffffffe0, %r11d   #  8     0xa9d73  7      OPC=131   
  nop                       #  9     0xa9d7a  1      OPC=1343  
  nop                       #  10    0xa9d7b  1      OPC=1343  
  nop                       #  11    0xa9d7c  1      OPC=1343  
  nop                       #  12    0xa9d7d  1      OPC=1343  
  addq %r15, %r11           #  13    0xa9d7e  3      OPC=72    
  jmpq %r11                 #  14    0xa9d81  3      OPC=928   
  nop                       #  15    0xa9d84  1      OPC=1343  
  nop                       #  16    0xa9d85  1      OPC=1343  
  nop                       #  17    0xa9d86  1      OPC=1343  
                                                               
.size _ZNKSs7_M_iendEv, .-_ZNKSs7_M_iendEv


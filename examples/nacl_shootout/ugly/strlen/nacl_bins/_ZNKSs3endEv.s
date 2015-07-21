  .text
  .globl _ZNKSs3endEv
  .type _ZNKSs3endEv, @function

#! file-offset 0xe9ec0
#! rip-offset  0xa9ec0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs3endEv:              #        0xa9ec0  0      OPC=0     
  movl %edi, %edi           #  1     0xa9ec0  2      OPC=1157  
  movl %edi, %edi           #  2     0xa9ec2  2      OPC=1157  
  movl (%r15,%rdi,1), %eax  #  3     0xa9ec4  4      OPC=1156  
  popq %r11                 #  4     0xa9ec8  2      OPC=1694  
  leal -0xc(%rax), %edx     #  5     0xa9eca  3      OPC=1066  
  movl %edx, %edx           #  6     0xa9ecd  2      OPC=1157  
  addl (%r15,%rdx,1), %eax  #  7     0xa9ecf  4      OPC=66    
  andl $0xffffffe0, %r11d   #  8     0xa9ed3  7      OPC=131   
  nop                       #  9     0xa9eda  1      OPC=1343  
  nop                       #  10    0xa9edb  1      OPC=1343  
  nop                       #  11    0xa9edc  1      OPC=1343  
  nop                       #  12    0xa9edd  1      OPC=1343  
  addq %r15, %r11           #  13    0xa9ede  3      OPC=72    
  jmpq %r11                 #  14    0xa9ee1  3      OPC=928   
  nop                       #  15    0xa9ee4  1      OPC=1343  
  nop                       #  16    0xa9ee5  1      OPC=1343  
  nop                       #  17    0xa9ee6  1      OPC=1343  
                                                               
.size _ZNKSs3endEv, .-_ZNKSs3endEv


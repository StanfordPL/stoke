  .text
  .globl _ZNKSs6lengthEv
  .type _ZNKSs6lengthEv, @function

#! file-offset 0xe9f60
#! rip-offset  0xa9f60
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs6lengthEv:           #        0xa9f60  0      OPC=0     
  movl %edi, %edi           #  1     0xa9f60  2      OPC=1157  
  movl %edi, %edi           #  2     0xa9f62  2      OPC=1157  
  movl (%r15,%rdi,1), %eax  #  3     0xa9f64  4      OPC=1156  
  popq %r11                 #  4     0xa9f68  2      OPC=1694  
  subl $0xc, %eax           #  5     0xa9f6a  3      OPC=2384  
  movl %eax, %eax           #  6     0xa9f6d  2      OPC=1157  
  movl (%r15,%rax,1), %eax  #  7     0xa9f6f  4      OPC=1156  
  andl $0xffffffe0, %r11d   #  8     0xa9f73  7      OPC=131   
  nop                       #  9     0xa9f7a  1      OPC=1343  
  nop                       #  10    0xa9f7b  1      OPC=1343  
  nop                       #  11    0xa9f7c  1      OPC=1343  
  nop                       #  12    0xa9f7d  1      OPC=1343  
  addq %r15, %r11           #  13    0xa9f7e  3      OPC=72    
  jmpq %r11                 #  14    0xa9f81  3      OPC=928   
  nop                       #  15    0xa9f84  1      OPC=1343  
  nop                       #  16    0xa9f85  1      OPC=1343  
  nop                       #  17    0xa9f86  1      OPC=1343  
                                                               
.size _ZNKSs6lengthEv, .-_ZNKSs6lengthEv


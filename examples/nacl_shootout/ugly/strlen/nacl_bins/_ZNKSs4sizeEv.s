  .text
  .globl _ZNKSs4sizeEv
  .type _ZNKSs4sizeEv, @function

#! file-offset 0xe9f40
#! rip-offset  0xa9f40
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs4sizeEv:             #        0xa9f40  0      OPC=0     
  movl %edi, %edi           #  1     0xa9f40  2      OPC=1157  
  movl %edi, %edi           #  2     0xa9f42  2      OPC=1157  
  movl (%r15,%rdi,1), %eax  #  3     0xa9f44  4      OPC=1156  
  popq %r11                 #  4     0xa9f48  2      OPC=1694  
  subl $0xc, %eax           #  5     0xa9f4a  3      OPC=2384  
  movl %eax, %eax           #  6     0xa9f4d  2      OPC=1157  
  movl (%r15,%rax,1), %eax  #  7     0xa9f4f  4      OPC=1156  
  andl $0xffffffe0, %r11d   #  8     0xa9f53  7      OPC=131   
  nop                       #  9     0xa9f5a  1      OPC=1343  
  nop                       #  10    0xa9f5b  1      OPC=1343  
  nop                       #  11    0xa9f5c  1      OPC=1343  
  nop                       #  12    0xa9f5d  1      OPC=1343  
  addq %r15, %r11           #  13    0xa9f5e  3      OPC=72    
  jmpq %r11                 #  14    0xa9f61  3      OPC=928   
  nop                       #  15    0xa9f64  1      OPC=1343  
  nop                       #  16    0xa9f65  1      OPC=1343  
  nop                       #  17    0xa9f66  1      OPC=1343  
                                                               
.size _ZNKSs4sizeEv, .-_ZNKSs4sizeEv


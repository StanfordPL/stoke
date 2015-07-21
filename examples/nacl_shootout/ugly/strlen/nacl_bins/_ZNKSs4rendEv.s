  .text
  .globl _ZNKSs4rendEv
  .type _ZNKSs4rendEv, @function

#! file-offset 0xe9f20
#! rip-offset  0xa9f20
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs4rendEv:             #        0xa9f20  0      OPC=0     
  movl %esi, %esi           #  1     0xa9f20  2      OPC=1157  
  movl %edi, %eax           #  2     0xa9f22  2      OPC=1157  
  movl %esi, %esi           #  3     0xa9f24  2      OPC=1157  
  movl (%r15,%rsi,1), %edx  #  4     0xa9f26  4      OPC=1156  
  movl %eax, %eax           #  5     0xa9f2a  2      OPC=1157  
  movl %edx, (%r15,%rax,1)  #  6     0xa9f2c  4      OPC=1136  
  popq %r11                 #  7     0xa9f30  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  8     0xa9f32  7      OPC=131   
  nop                       #  9     0xa9f39  1      OPC=1343  
  nop                       #  10    0xa9f3a  1      OPC=1343  
  nop                       #  11    0xa9f3b  1      OPC=1343  
  nop                       #  12    0xa9f3c  1      OPC=1343  
  addq %r15, %r11           #  13    0xa9f3d  3      OPC=72    
  jmpq %r11                 #  14    0xa9f40  3      OPC=928   
  nop                       #  15    0xa9f43  1      OPC=1343  
  nop                       #  16    0xa9f44  1      OPC=1343  
  nop                       #  17    0xa9f45  1      OPC=1343  
  nop                       #  18    0xa9f46  1      OPC=1343  
                                                               
.size _ZNKSs4rendEv, .-_ZNKSs4rendEv


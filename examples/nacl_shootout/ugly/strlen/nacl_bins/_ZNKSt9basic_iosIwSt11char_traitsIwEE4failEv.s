  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv, @function

#! file-offset 0xa4460
#! rip-offset  0x64460
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv:  #        0x64460  0      OPC=0     
  movl %edi, %edi                               #  1     0x64460  2      OPC=1157  
  movl %edi, %edi                               #  2     0x64462  2      OPC=1157  
  testb $0x5, 0x14(%r15,%rdi,1)                 #  3     0x64464  6      OPC=2430  
  popq %r11                                     #  4     0x6446a  2      OPC=1694  
  setne %al                                     #  5     0x6446c  3      OPC=2208  
  andl $0xffffffe0, %r11d                       #  6     0x6446f  7      OPC=131   
  nop                                           #  7     0x64476  1      OPC=1343  
  nop                                           #  8     0x64477  1      OPC=1343  
  nop                                           #  9     0x64478  1      OPC=1343  
  nop                                           #  10    0x64479  1      OPC=1343  
  addq %r15, %r11                               #  11    0x6447a  3      OPC=72    
  jmpq %r11                                     #  12    0x6447d  3      OPC=928   
  nop                                           #  13    0x64480  1      OPC=1343  
  nop                                           #  14    0x64481  1      OPC=1343  
  nop                                           #  15    0x64482  1      OPC=1343  
  nop                                           #  16    0x64483  1      OPC=1343  
  nop                                           #  17    0x64484  1      OPC=1343  
  nop                                           #  18    0x64485  1      OPC=1343  
  nop                                           #  19    0x64486  1      OPC=1343  
                                                                                   
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE4failEv


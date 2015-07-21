  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv, @function

#! file-offset 0xa4300
#! rip-offset  0x64300
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv:  #        0x64300  0      OPC=0     
  movl %edi, %edi                               #  1     0x64300  2      OPC=1157  
  movl %edi, %edi                               #  2     0x64302  2      OPC=1157  
  testb $0x5, 0x14(%r15,%rdi,1)                 #  3     0x64304  6      OPC=2430  
  popq %r11                                     #  4     0x6430a  2      OPC=1694  
  setne %al                                     #  5     0x6430c  3      OPC=2208  
  andl $0xffffffe0, %r11d                       #  6     0x6430f  7      OPC=131   
  nop                                           #  7     0x64316  1      OPC=1343  
  nop                                           #  8     0x64317  1      OPC=1343  
  nop                                           #  9     0x64318  1      OPC=1343  
  nop                                           #  10    0x64319  1      OPC=1343  
  addq %r15, %r11                               #  11    0x6431a  3      OPC=72    
  jmpq %r11                                     #  12    0x6431d  3      OPC=928   
  nop                                           #  13    0x64320  1      OPC=1343  
  nop                                           #  14    0x64321  1      OPC=1343  
  nop                                           #  15    0x64322  1      OPC=1343  
  nop                                           #  16    0x64323  1      OPC=1343  
  nop                                           #  17    0x64324  1      OPC=1343  
  nop                                           #  18    0x64325  1      OPC=1343  
  nop                                           #  19    0x64326  1      OPC=1343  
                                                                                   
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv


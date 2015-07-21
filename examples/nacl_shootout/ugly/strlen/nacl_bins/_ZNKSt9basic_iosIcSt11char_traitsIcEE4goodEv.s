  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv, @function

#! file-offset 0xa42c0
#! rip-offset  0x642c0
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv:  #        0x642c0  0      OPC=0     
  movl %edi, %edi                               #  1     0x642c0  2      OPC=1157  
  movl %edi, %edi                               #  2     0x642c2  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %eax                  #  3     0x642c4  5      OPC=1156  
  popq %r11                                     #  4     0x642c9  2      OPC=1694  
  testl %eax, %eax                              #  5     0x642cb  2      OPC=2436  
  sete %al                                      #  6     0x642cd  3      OPC=2178  
  andl $0xffffffe0, %r11d                       #  7     0x642d0  7      OPC=131   
  nop                                           #  8     0x642d7  1      OPC=1343  
  nop                                           #  9     0x642d8  1      OPC=1343  
  nop                                           #  10    0x642d9  1      OPC=1343  
  nop                                           #  11    0x642da  1      OPC=1343  
  addq %r15, %r11                               #  12    0x642db  3      OPC=72    
  jmpq %r11                                     #  13    0x642de  3      OPC=928   
  nop                                           #  14    0x642e1  1      OPC=1343  
  nop                                           #  15    0x642e2  1      OPC=1343  
  nop                                           #  16    0x642e3  1      OPC=1343  
  nop                                           #  17    0x642e4  1      OPC=1343  
  nop                                           #  18    0x642e5  1      OPC=1343  
  nop                                           #  19    0x642e6  1      OPC=1343  
                                                                                   
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv


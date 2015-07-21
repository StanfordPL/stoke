  .text
  .globl _ZSt13set_terminatePFvvE
  .type _ZSt13set_terminatePFvvE, @function

#! file-offset 0x121de0
#! rip-offset  0xe1de0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
._ZSt13set_terminatePFvvE:    #        0xe1de0  0      OPC=0     
  popq %r11                   #  1     0xe1de0  2      OPC=1694  
  movl 0xff8eb40(%rip), %eax  #  2     0xe1de2  6      OPC=1156  
  movl %edi, 0xff8eb3a(%rip)  #  3     0xe1de8  6      OPC=1136  
  andl $0xffffffe0, %r11d     #  4     0xe1dee  7      OPC=131   
  nop                         #  5     0xe1df5  1      OPC=1343  
  nop                         #  6     0xe1df6  1      OPC=1343  
  nop                         #  7     0xe1df7  1      OPC=1343  
  nop                         #  8     0xe1df8  1      OPC=1343  
  addq %r15, %r11             #  9     0xe1df9  3      OPC=72    
  jmpq %r11                   #  10    0xe1dfc  3      OPC=928   
  nop                         #  11    0xe1dff  1      OPC=1343  
  nop                         #  12    0xe1e00  1      OPC=1343  
  nop                         #  13    0xe1e01  1      OPC=1343  
  nop                         #  14    0xe1e02  1      OPC=1343  
  nop                         #  15    0xe1e03  1      OPC=1343  
  nop                         #  16    0xe1e04  1      OPC=1343  
  nop                         #  17    0xe1e05  1      OPC=1343  
  nop                         #  18    0xe1e06  1      OPC=1343  
                                                                 
.size _ZSt13set_terminatePFvvE, .-_ZSt13set_terminatePFvvE


  .text
  .globl _ZSt15set_new_handlerPFvvE
  .type _ZSt15set_new_handlerPFvvE, @function

#! file-offset 0x1200a0
#! rip-offset  0xe00a0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode    
._ZSt15set_new_handlerPFvvE:  #        0xe00a0  0      OPC=0     
  popq %r11                   #  1     0xe00a0  2      OPC=1694  
  movl 0xff93588(%rip), %eax  #  2     0xe00a2  6      OPC=1156  
  movl %edi, 0xff93582(%rip)  #  3     0xe00a8  6      OPC=1136  
  andl $0xffffffe0, %r11d     #  4     0xe00ae  7      OPC=131   
  nop                         #  5     0xe00b5  1      OPC=1343  
  nop                         #  6     0xe00b6  1      OPC=1343  
  nop                         #  7     0xe00b7  1      OPC=1343  
  nop                         #  8     0xe00b8  1      OPC=1343  
  addq %r15, %r11             #  9     0xe00b9  3      OPC=72    
  jmpq %r11                   #  10    0xe00bc  3      OPC=928   
  nop                         #  11    0xe00bf  1      OPC=1343  
  nop                         #  12    0xe00c0  1      OPC=1343  
  nop                         #  13    0xe00c1  1      OPC=1343  
  nop                         #  14    0xe00c2  1      OPC=1343  
  nop                         #  15    0xe00c3  1      OPC=1343  
  nop                         #  16    0xe00c4  1      OPC=1343  
  nop                         #  17    0xe00c5  1      OPC=1343  
  nop                         #  18    0xe00c6  1      OPC=1343  
                                                                 
.size _ZSt15set_new_handlerPFvvE, .-_ZSt15set_new_handlerPFvvE


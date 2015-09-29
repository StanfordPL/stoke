  .text
  .globl _ZNKSt13bad_exception4whatEv
  .type _ZNKSt13bad_exception4whatEv, @function

#! file-offset 0x123cc0
#! rip-offset  0xe3cc0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt13bad_exception4whatEv:  #        0xe3cc0  0      OPC=<label>         
  popq %r11                     #  1     0xe3cc0  2      OPC=popq_r64_1      
  movl $0x1003d2df, %eax        #  2     0xe3cc2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d       #  3     0xe3cc7  7      OPC=andl_r32_imm32  
  nop                           #  4     0xe3cce  1      OPC=nop             
  nop                           #  5     0xe3ccf  1      OPC=nop             
  nop                           #  6     0xe3cd0  1      OPC=nop             
  nop                           #  7     0xe3cd1  1      OPC=nop             
  addq %r15, %r11               #  8     0xe3cd2  3      OPC=addq_r64_r64    
  jmpq %r11                     #  9     0xe3cd5  3      OPC=jmpq_r64        
  nop                           #  10    0xe3cd8  1      OPC=nop             
  nop                           #  11    0xe3cd9  1      OPC=nop             
  nop                           #  12    0xe3cda  1      OPC=nop             
  nop                           #  13    0xe3cdb  1      OPC=nop             
  nop                           #  14    0xe3cdc  1      OPC=nop             
  nop                           #  15    0xe3cdd  1      OPC=nop             
  nop                           #  16    0xe3cde  1      OPC=nop             
  nop                           #  17    0xe3cdf  1      OPC=nop             
  nop                           #  18    0xe3ce0  1      OPC=nop             
  nop                           #  19    0xe3ce1  1      OPC=nop             
  nop                           #  20    0xe3ce2  1      OPC=nop             
  nop                           #  21    0xe3ce3  1      OPC=nop             
  nop                           #  22    0xe3ce4  1      OPC=nop             
  nop                           #  23    0xe3ce5  1      OPC=nop             
  nop                           #  24    0xe3ce6  1      OPC=nop             
                                                                             
.size _ZNKSt13bad_exception4whatEv, .-_ZNKSt13bad_exception4whatEv


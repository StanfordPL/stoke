  .text
  .globl _ZNKSt9exception4whatEv
  .type _ZNKSt9exception4whatEv, @function

#! file-offset 0x123ca0
#! rip-offset  0xe3ca0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNKSt9exception4whatEv:  #        0xe3ca0  0      OPC=<label>         
  popq %r11                #  1     0xe3ca0  2      OPC=popq_r64_1      
  movl $0x1003d2d0, %eax   #  2     0xe3ca2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0xe3ca7  7      OPC=andl_r32_imm32  
  nop                      #  4     0xe3cae  1      OPC=nop             
  nop                      #  5     0xe3caf  1      OPC=nop             
  nop                      #  6     0xe3cb0  1      OPC=nop             
  nop                      #  7     0xe3cb1  1      OPC=nop             
  addq %r15, %r11          #  8     0xe3cb2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0xe3cb5  3      OPC=jmpq_r64        
  nop                      #  10    0xe3cb8  1      OPC=nop             
  nop                      #  11    0xe3cb9  1      OPC=nop             
  nop                      #  12    0xe3cba  1      OPC=nop             
  nop                      #  13    0xe3cbb  1      OPC=nop             
  nop                      #  14    0xe3cbc  1      OPC=nop             
  nop                      #  15    0xe3cbd  1      OPC=nop             
  nop                      #  16    0xe3cbe  1      OPC=nop             
  nop                      #  17    0xe3cbf  1      OPC=nop             
  nop                      #  18    0xe3cc0  1      OPC=nop             
  nop                      #  19    0xe3cc1  1      OPC=nop             
  nop                      #  20    0xe3cc2  1      OPC=nop             
  nop                      #  21    0xe3cc3  1      OPC=nop             
  nop                      #  22    0xe3cc4  1      OPC=nop             
  nop                      #  23    0xe3cc5  1      OPC=nop             
  nop                      #  24    0xe3cc6  1      OPC=nop             
                                                                        
.size _ZNKSt9exception4whatEv, .-_ZNKSt9exception4whatEv


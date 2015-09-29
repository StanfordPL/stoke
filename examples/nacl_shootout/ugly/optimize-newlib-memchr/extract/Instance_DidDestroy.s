  .text
  .globl Instance_DidDestroy
  .type Instance_DidDestroy, @function

#! file-offset 0x6cd40
#! rip-offset  0x2cd40
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Instance_DidDestroy:      #        0x2cd40  0      OPC=<label>         
  popq %r11                #  1     0x2cd40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2cd42  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2cd49  1      OPC=nop             
  nop                      #  4     0x2cd4a  1      OPC=nop             
  nop                      #  5     0x2cd4b  1      OPC=nop             
  nop                      #  6     0x2cd4c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2cd4d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2cd50  3      OPC=jmpq_r64        
  nop                      #  9     0x2cd53  1      OPC=nop             
  nop                      #  10    0x2cd54  1      OPC=nop             
  nop                      #  11    0x2cd55  1      OPC=nop             
  nop                      #  12    0x2cd56  1      OPC=nop             
  nop                      #  13    0x2cd57  1      OPC=nop             
  nop                      #  14    0x2cd58  1      OPC=nop             
  nop                      #  15    0x2cd59  1      OPC=nop             
  nop                      #  16    0x2cd5a  1      OPC=nop             
  nop                      #  17    0x2cd5b  1      OPC=nop             
  nop                      #  18    0x2cd5c  1      OPC=nop             
  nop                      #  19    0x2cd5d  1      OPC=nop             
  nop                      #  20    0x2cd5e  1      OPC=nop             
  nop                      #  21    0x2cd5f  1      OPC=nop             
  nop                      #  22    0x2cd60  1      OPC=nop             
  nop                      #  23    0x2cd61  1      OPC=nop             
  nop                      #  24    0x2cd62  1      OPC=nop             
  nop                      #  25    0x2cd63  1      OPC=nop             
  nop                      #  26    0x2cd64  1      OPC=nop             
  nop                      #  27    0x2cd65  1      OPC=nop             
  nop                      #  28    0x2cd66  1      OPC=nop             
                                                                        
.size Instance_DidDestroy, .-Instance_DidDestroy


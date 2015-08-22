  .text
  .globl NACL_AnnotateBarrierWaitBefore
  .type NACL_AnnotateBarrierWaitBefore, @function

#! file-offset 0x703c0
#! rip-offset  0x303c0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierWaitBefore:  #        0x303c0  0      OPC=<label>         
  popq %r11                       #  1     0x303c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  2     0x303c2  7      OPC=andl_r32_imm32  
  nop                             #  3     0x303c9  1      OPC=nop             
  nop                             #  4     0x303ca  1      OPC=nop             
  nop                             #  5     0x303cb  1      OPC=nop             
  nop                             #  6     0x303cc  1      OPC=nop             
  addq %r15, %r11                 #  7     0x303cd  3      OPC=addq_r64_r64    
  jmpq %r11                       #  8     0x303d0  3      OPC=jmpq_r64        
  nop                             #  9     0x303d3  1      OPC=nop             
  nop                             #  10    0x303d4  1      OPC=nop             
  nop                             #  11    0x303d5  1      OPC=nop             
  nop                             #  12    0x303d6  1      OPC=nop             
  nop                             #  13    0x303d7  1      OPC=nop             
  nop                             #  14    0x303d8  1      OPC=nop             
  nop                             #  15    0x303d9  1      OPC=nop             
  nop                             #  16    0x303da  1      OPC=nop             
  nop                             #  17    0x303db  1      OPC=nop             
  nop                             #  18    0x303dc  1      OPC=nop             
  nop                             #  19    0x303dd  1      OPC=nop             
  nop                             #  20    0x303de  1      OPC=nop             
  nop                             #  21    0x303df  1      OPC=nop             
  nop                             #  22    0x303e0  1      OPC=nop             
  nop                             #  23    0x303e1  1      OPC=nop             
  nop                             #  24    0x303e2  1      OPC=nop             
  nop                             #  25    0x303e3  1      OPC=nop             
  nop                             #  26    0x303e4  1      OPC=nop             
  nop                             #  27    0x303e5  1      OPC=nop             
  nop                             #  28    0x303e6  1      OPC=nop             
                                                                               
.size NACL_AnnotateBarrierWaitBefore, .-NACL_AnnotateBarrierWaitBefore


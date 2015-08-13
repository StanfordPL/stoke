  .text
  .globl NACL_AnnotateBarrierWaitBefore
  .type NACL_AnnotateBarrierWaitBefore, @function

#! file-offset 0x6f9a0
#! rip-offset  0x2f9a0
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBarrierWaitBefore:  #        0x2f9a0  0      OPC=<label>         
  popq %r11                       #  1     0x2f9a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  2     0x2f9a2  7      OPC=andl_r32_imm32  
  nop                             #  3     0x2f9a9  1      OPC=nop             
  nop                             #  4     0x2f9aa  1      OPC=nop             
  nop                             #  5     0x2f9ab  1      OPC=nop             
  nop                             #  6     0x2f9ac  1      OPC=nop             
  addq %r15, %r11                 #  7     0x2f9ad  3      OPC=addq_r64_r64    
  jmpq %r11                       #  8     0x2f9b0  3      OPC=jmpq_r64        
  nop                             #  9     0x2f9b3  1      OPC=nop             
  nop                             #  10    0x2f9b4  1      OPC=nop             
  nop                             #  11    0x2f9b5  1      OPC=nop             
  nop                             #  12    0x2f9b6  1      OPC=nop             
  nop                             #  13    0x2f9b7  1      OPC=nop             
  nop                             #  14    0x2f9b8  1      OPC=nop             
  nop                             #  15    0x2f9b9  1      OPC=nop             
  nop                             #  16    0x2f9ba  1      OPC=nop             
  nop                             #  17    0x2f9bb  1      OPC=nop             
  nop                             #  18    0x2f9bc  1      OPC=nop             
  nop                             #  19    0x2f9bd  1      OPC=nop             
  nop                             #  20    0x2f9be  1      OPC=nop             
  nop                             #  21    0x2f9bf  1      OPC=nop             
  nop                             #  22    0x2f9c0  1      OPC=nop             
  nop                             #  23    0x2f9c1  1      OPC=nop             
  nop                             #  24    0x2f9c2  1      OPC=nop             
  nop                             #  25    0x2f9c3  1      OPC=nop             
  nop                             #  26    0x2f9c4  1      OPC=nop             
  nop                             #  27    0x2f9c5  1      OPC=nop             
  nop                             #  28    0x2f9c6  1      OPC=nop             
                                                                               
.size NACL_AnnotateBarrierWaitBefore, .-NACL_AnnotateBarrierWaitBefore


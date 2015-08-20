  .text
  .globl NACL_AnnotateEnableRaceDetection
  .type NACL_AnnotateEnableRaceDetection, @function

#! file-offset 0x70040
#! rip-offset  0x30040
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateEnableRaceDetection:  #        0x30040  0      OPC=<label>         
  popq %r11                         #  1     0x30040  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  2     0x30042  7      OPC=andl_r32_imm32  
  nop                               #  3     0x30049  1      OPC=nop             
  nop                               #  4     0x3004a  1      OPC=nop             
  nop                               #  5     0x3004b  1      OPC=nop             
  nop                               #  6     0x3004c  1      OPC=nop             
  addq %r15, %r11                   #  7     0x3004d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  8     0x30050  3      OPC=jmpq_r64        
  nop                               #  9     0x30053  1      OPC=nop             
  nop                               #  10    0x30054  1      OPC=nop             
  nop                               #  11    0x30055  1      OPC=nop             
  nop                               #  12    0x30056  1      OPC=nop             
  nop                               #  13    0x30057  1      OPC=nop             
  nop                               #  14    0x30058  1      OPC=nop             
  nop                               #  15    0x30059  1      OPC=nop             
  nop                               #  16    0x3005a  1      OPC=nop             
  nop                               #  17    0x3005b  1      OPC=nop             
  nop                               #  18    0x3005c  1      OPC=nop             
  nop                               #  19    0x3005d  1      OPC=nop             
  nop                               #  20    0x3005e  1      OPC=nop             
  nop                               #  21    0x3005f  1      OPC=nop             
  nop                               #  22    0x30060  1      OPC=nop             
  nop                               #  23    0x30061  1      OPC=nop             
  nop                               #  24    0x30062  1      OPC=nop             
  nop                               #  25    0x30063  1      OPC=nop             
  nop                               #  26    0x30064  1      OPC=nop             
  nop                               #  27    0x30065  1      OPC=nop             
  nop                               #  28    0x30066  1      OPC=nop             
                                                                                 
.size NACL_AnnotateEnableRaceDetection, .-NACL_AnnotateEnableRaceDetection


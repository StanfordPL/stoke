  .text
  .globl NACL_AnnotateIgnoreSyncEnd
  .type NACL_AnnotateIgnoreSyncEnd, @function

#! file-offset 0x70020
#! rip-offset  0x30020
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreSyncEnd:  #        0x30020  0      OPC=<label>         
  popq %r11                   #  1     0x30020  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x30022  7      OPC=andl_r32_imm32  
  nop                         #  3     0x30029  1      OPC=nop             
  nop                         #  4     0x3002a  1      OPC=nop             
  nop                         #  5     0x3002b  1      OPC=nop             
  nop                         #  6     0x3002c  1      OPC=nop             
  addq %r15, %r11             #  7     0x3002d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x30030  3      OPC=jmpq_r64        
  nop                         #  9     0x30033  1      OPC=nop             
  nop                         #  10    0x30034  1      OPC=nop             
  nop                         #  11    0x30035  1      OPC=nop             
  nop                         #  12    0x30036  1      OPC=nop             
  nop                         #  13    0x30037  1      OPC=nop             
  nop                         #  14    0x30038  1      OPC=nop             
  nop                         #  15    0x30039  1      OPC=nop             
  nop                         #  16    0x3003a  1      OPC=nop             
  nop                         #  17    0x3003b  1      OPC=nop             
  nop                         #  18    0x3003c  1      OPC=nop             
  nop                         #  19    0x3003d  1      OPC=nop             
  nop                         #  20    0x3003e  1      OPC=nop             
  nop                         #  21    0x3003f  1      OPC=nop             
  nop                         #  22    0x30040  1      OPC=nop             
  nop                         #  23    0x30041  1      OPC=nop             
  nop                         #  24    0x30042  1      OPC=nop             
  nop                         #  25    0x30043  1      OPC=nop             
  nop                         #  26    0x30044  1      OPC=nop             
  nop                         #  27    0x30045  1      OPC=nop             
  nop                         #  28    0x30046  1      OPC=nop             
                                                                           
.size NACL_AnnotateIgnoreSyncEnd, .-NACL_AnnotateIgnoreSyncEnd


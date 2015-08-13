  .text
  .globl NACL_AnnotateIgnoreSyncEnd
  .type NACL_AnnotateIgnoreSyncEnd, @function

#! file-offset 0x6fd20
#! rip-offset  0x2fd20
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreSyncEnd:  #        0x2fd20  0      OPC=<label>         
  popq %r11                   #  1     0x2fd20  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d     #  2     0x2fd22  7      OPC=andl_r32_imm32  
  nop                         #  3     0x2fd29  1      OPC=nop             
  nop                         #  4     0x2fd2a  1      OPC=nop             
  nop                         #  5     0x2fd2b  1      OPC=nop             
  nop                         #  6     0x2fd2c  1      OPC=nop             
  addq %r15, %r11             #  7     0x2fd2d  3      OPC=addq_r64_r64    
  jmpq %r11                   #  8     0x2fd30  3      OPC=jmpq_r64        
  nop                         #  9     0x2fd33  1      OPC=nop             
  nop                         #  10    0x2fd34  1      OPC=nop             
  nop                         #  11    0x2fd35  1      OPC=nop             
  nop                         #  12    0x2fd36  1      OPC=nop             
  nop                         #  13    0x2fd37  1      OPC=nop             
  nop                         #  14    0x2fd38  1      OPC=nop             
  nop                         #  15    0x2fd39  1      OPC=nop             
  nop                         #  16    0x2fd3a  1      OPC=nop             
  nop                         #  17    0x2fd3b  1      OPC=nop             
  nop                         #  18    0x2fd3c  1      OPC=nop             
  nop                         #  19    0x2fd3d  1      OPC=nop             
  nop                         #  20    0x2fd3e  1      OPC=nop             
  nop                         #  21    0x2fd3f  1      OPC=nop             
  nop                         #  22    0x2fd40  1      OPC=nop             
  nop                         #  23    0x2fd41  1      OPC=nop             
  nop                         #  24    0x2fd42  1      OPC=nop             
  nop                         #  25    0x2fd43  1      OPC=nop             
  nop                         #  26    0x2fd44  1      OPC=nop             
  nop                         #  27    0x2fd45  1      OPC=nop             
  nop                         #  28    0x2fd46  1      OPC=nop             
                                                                           
.size NACL_AnnotateIgnoreSyncEnd, .-NACL_AnnotateIgnoreSyncEnd


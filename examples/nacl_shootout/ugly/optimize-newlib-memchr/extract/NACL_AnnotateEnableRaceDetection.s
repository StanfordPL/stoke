  .text
  .globl NACL_AnnotateEnableRaceDetection
  .type NACL_AnnotateEnableRaceDetection, @function

#! file-offset 0x70760
#! rip-offset  0x30760
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateEnableRaceDetection:  #        0x30760  0      OPC=<label>         
  popq %r11                         #  1     0x30760  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  2     0x30762  7      OPC=andl_r32_imm32  
  nop                               #  3     0x30769  1      OPC=nop             
  nop                               #  4     0x3076a  1      OPC=nop             
  nop                               #  5     0x3076b  1      OPC=nop             
  nop                               #  6     0x3076c  1      OPC=nop             
  addq %r15, %r11                   #  7     0x3076d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  8     0x30770  3      OPC=jmpq_r64        
  nop                               #  9     0x30773  1      OPC=nop             
  nop                               #  10    0x30774  1      OPC=nop             
  nop                               #  11    0x30775  1      OPC=nop             
  nop                               #  12    0x30776  1      OPC=nop             
  nop                               #  13    0x30777  1      OPC=nop             
  nop                               #  14    0x30778  1      OPC=nop             
  nop                               #  15    0x30779  1      OPC=nop             
  nop                               #  16    0x3077a  1      OPC=nop             
  nop                               #  17    0x3077b  1      OPC=nop             
  nop                               #  18    0x3077c  1      OPC=nop             
  nop                               #  19    0x3077d  1      OPC=nop             
  nop                               #  20    0x3077e  1      OPC=nop             
  nop                               #  21    0x3077f  1      OPC=nop             
  nop                               #  22    0x30780  1      OPC=nop             
  nop                               #  23    0x30781  1      OPC=nop             
  nop                               #  24    0x30782  1      OPC=nop             
  nop                               #  25    0x30783  1      OPC=nop             
  nop                               #  26    0x30784  1      OPC=nop             
  nop                               #  27    0x30785  1      OPC=nop             
  nop                               #  28    0x30786  1      OPC=nop             
                                                                                 
.size NACL_AnnotateEnableRaceDetection, .-NACL_AnnotateEnableRaceDetection


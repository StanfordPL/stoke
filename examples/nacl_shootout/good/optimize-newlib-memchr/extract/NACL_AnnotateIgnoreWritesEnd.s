  .text
  .globl NACL_AnnotateIgnoreWritesEnd
  .type NACL_AnnotateIgnoreWritesEnd, @function

#! file-offset 0x70700
#! rip-offset  0x30700
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreWritesEnd:  #        0x30700  0      OPC=<label>         
  popq %r11                     #  1     0x30700  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x30702  7      OPC=andl_r32_imm32  
  nop                           #  3     0x30709  1      OPC=nop             
  nop                           #  4     0x3070a  1      OPC=nop             
  nop                           #  5     0x3070b  1      OPC=nop             
  nop                           #  6     0x3070c  1      OPC=nop             
  addq %r15, %r11               #  7     0x3070d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x30710  3      OPC=jmpq_r64        
  nop                           #  9     0x30713  1      OPC=nop             
  nop                           #  10    0x30714  1      OPC=nop             
  nop                           #  11    0x30715  1      OPC=nop             
  nop                           #  12    0x30716  1      OPC=nop             
  nop                           #  13    0x30717  1      OPC=nop             
  nop                           #  14    0x30718  1      OPC=nop             
  nop                           #  15    0x30719  1      OPC=nop             
  nop                           #  16    0x3071a  1      OPC=nop             
  nop                           #  17    0x3071b  1      OPC=nop             
  nop                           #  18    0x3071c  1      OPC=nop             
  nop                           #  19    0x3071d  1      OPC=nop             
  nop                           #  20    0x3071e  1      OPC=nop             
  nop                           #  21    0x3071f  1      OPC=nop             
  nop                           #  22    0x30720  1      OPC=nop             
  nop                           #  23    0x30721  1      OPC=nop             
  nop                           #  24    0x30722  1      OPC=nop             
  nop                           #  25    0x30723  1      OPC=nop             
  nop                           #  26    0x30724  1      OPC=nop             
  nop                           #  27    0x30725  1      OPC=nop             
  nop                           #  28    0x30726  1      OPC=nop             
                                                                             
.size NACL_AnnotateIgnoreWritesEnd, .-NACL_AnnotateIgnoreWritesEnd


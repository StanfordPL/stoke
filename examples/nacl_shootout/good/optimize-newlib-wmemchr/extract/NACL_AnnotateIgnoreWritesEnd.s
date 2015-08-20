  .text
  .globl NACL_AnnotateIgnoreWritesEnd
  .type NACL_AnnotateIgnoreWritesEnd, @function

#! file-offset 0x6ffe0
#! rip-offset  0x2ffe0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateIgnoreWritesEnd:  #        0x2ffe0  0      OPC=<label>         
  popq %r11                     #  1     0x2ffe0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x2ffe2  7      OPC=andl_r32_imm32  
  nop                           #  3     0x2ffe9  1      OPC=nop             
  nop                           #  4     0x2ffea  1      OPC=nop             
  nop                           #  5     0x2ffeb  1      OPC=nop             
  nop                           #  6     0x2ffec  1      OPC=nop             
  addq %r15, %r11               #  7     0x2ffed  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x2fff0  3      OPC=jmpq_r64        
  nop                           #  9     0x2fff3  1      OPC=nop             
  nop                           #  10    0x2fff4  1      OPC=nop             
  nop                           #  11    0x2fff5  1      OPC=nop             
  nop                           #  12    0x2fff6  1      OPC=nop             
  nop                           #  13    0x2fff7  1      OPC=nop             
  nop                           #  14    0x2fff8  1      OPC=nop             
  nop                           #  15    0x2fff9  1      OPC=nop             
  nop                           #  16    0x2fffa  1      OPC=nop             
  nop                           #  17    0x2fffb  1      OPC=nop             
  nop                           #  18    0x2fffc  1      OPC=nop             
  nop                           #  19    0x2fffd  1      OPC=nop             
  nop                           #  20    0x2fffe  1      OPC=nop             
  nop                           #  21    0x2ffff  1      OPC=nop             
  nop                           #  22    0x30000  1      OPC=nop             
  nop                           #  23    0x30001  1      OPC=nop             
  nop                           #  24    0x30002  1      OPC=nop             
  nop                           #  25    0x30003  1      OPC=nop             
  nop                           #  26    0x30004  1      OPC=nop             
  nop                           #  27    0x30005  1      OPC=nop             
  nop                           #  28    0x30006  1      OPC=nop             
                                                                             
.size NACL_AnnotateIgnoreWritesEnd, .-NACL_AnnotateIgnoreWritesEnd


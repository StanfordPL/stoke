  .text
  .globl NACL_AnnotateBenignRaceSized
  .type NACL_AnnotateBenignRaceSized, @function

#! file-offset 0x6fbe0
#! rip-offset  0x2fbe0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBenignRaceSized:  #        0x2fbe0  0      OPC=<label>         
  popq %r11                     #  1     0x2fbe0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x2fbe2  7      OPC=andl_r32_imm32  
  nop                           #  3     0x2fbe9  1      OPC=nop             
  nop                           #  4     0x2fbea  1      OPC=nop             
  nop                           #  5     0x2fbeb  1      OPC=nop             
  nop                           #  6     0x2fbec  1      OPC=nop             
  addq %r15, %r11               #  7     0x2fbed  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x2fbf0  3      OPC=jmpq_r64        
  nop                           #  9     0x2fbf3  1      OPC=nop             
  nop                           #  10    0x2fbf4  1      OPC=nop             
  nop                           #  11    0x2fbf5  1      OPC=nop             
  nop                           #  12    0x2fbf6  1      OPC=nop             
  nop                           #  13    0x2fbf7  1      OPC=nop             
  nop                           #  14    0x2fbf8  1      OPC=nop             
  nop                           #  15    0x2fbf9  1      OPC=nop             
  nop                           #  16    0x2fbfa  1      OPC=nop             
  nop                           #  17    0x2fbfb  1      OPC=nop             
  nop                           #  18    0x2fbfc  1      OPC=nop             
  nop                           #  19    0x2fbfd  1      OPC=nop             
  nop                           #  20    0x2fbfe  1      OPC=nop             
  nop                           #  21    0x2fbff  1      OPC=nop             
  nop                           #  22    0x2fc00  1      OPC=nop             
  nop                           #  23    0x2fc01  1      OPC=nop             
  nop                           #  24    0x2fc02  1      OPC=nop             
  nop                           #  25    0x2fc03  1      OPC=nop             
  nop                           #  26    0x2fc04  1      OPC=nop             
  nop                           #  27    0x2fc05  1      OPC=nop             
  nop                           #  28    0x2fc06  1      OPC=nop             
                                                                             
.size NACL_AnnotateBenignRaceSized, .-NACL_AnnotateBenignRaceSized


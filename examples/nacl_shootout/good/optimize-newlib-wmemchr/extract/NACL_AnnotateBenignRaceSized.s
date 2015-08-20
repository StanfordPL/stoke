  .text
  .globl NACL_AnnotateBenignRaceSized
  .type NACL_AnnotateBenignRaceSized, @function

#! file-offset 0x6fee0
#! rip-offset  0x2fee0
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBenignRaceSized:  #        0x2fee0  0      OPC=<label>         
  popq %r11                     #  1     0x2fee0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x2fee2  7      OPC=andl_r32_imm32  
  nop                           #  3     0x2fee9  1      OPC=nop             
  nop                           #  4     0x2feea  1      OPC=nop             
  nop                           #  5     0x2feeb  1      OPC=nop             
  nop                           #  6     0x2feec  1      OPC=nop             
  addq %r15, %r11               #  7     0x2feed  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x2fef0  3      OPC=jmpq_r64        
  nop                           #  9     0x2fef3  1      OPC=nop             
  nop                           #  10    0x2fef4  1      OPC=nop             
  nop                           #  11    0x2fef5  1      OPC=nop             
  nop                           #  12    0x2fef6  1      OPC=nop             
  nop                           #  13    0x2fef7  1      OPC=nop             
  nop                           #  14    0x2fef8  1      OPC=nop             
  nop                           #  15    0x2fef9  1      OPC=nop             
  nop                           #  16    0x2fefa  1      OPC=nop             
  nop                           #  17    0x2fefb  1      OPC=nop             
  nop                           #  18    0x2fefc  1      OPC=nop             
  nop                           #  19    0x2fefd  1      OPC=nop             
  nop                           #  20    0x2fefe  1      OPC=nop             
  nop                           #  21    0x2feff  1      OPC=nop             
  nop                           #  22    0x2ff00  1      OPC=nop             
  nop                           #  23    0x2ff01  1      OPC=nop             
  nop                           #  24    0x2ff02  1      OPC=nop             
  nop                           #  25    0x2ff03  1      OPC=nop             
  nop                           #  26    0x2ff04  1      OPC=nop             
  nop                           #  27    0x2ff05  1      OPC=nop             
  nop                           #  28    0x2ff06  1      OPC=nop             
                                                                             
.size NACL_AnnotateBenignRaceSized, .-NACL_AnnotateBenignRaceSized


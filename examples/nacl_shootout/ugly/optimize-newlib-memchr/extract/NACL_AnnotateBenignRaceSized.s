  .text
  .globl NACL_AnnotateBenignRaceSized
  .type NACL_AnnotateBenignRaceSized, @function

#! file-offset 0x70600
#! rip-offset  0x30600
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBenignRaceSized:  #        0x30600  0      OPC=<label>         
  popq %r11                     #  1     0x30600  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  2     0x30602  7      OPC=andl_r32_imm32  
  nop                           #  3     0x30609  1      OPC=nop             
  nop                           #  4     0x3060a  1      OPC=nop             
  nop                           #  5     0x3060b  1      OPC=nop             
  nop                           #  6     0x3060c  1      OPC=nop             
  addq %r15, %r11               #  7     0x3060d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  8     0x30610  3      OPC=jmpq_r64        
  nop                           #  9     0x30613  1      OPC=nop             
  nop                           #  10    0x30614  1      OPC=nop             
  nop                           #  11    0x30615  1      OPC=nop             
  nop                           #  12    0x30616  1      OPC=nop             
  nop                           #  13    0x30617  1      OPC=nop             
  nop                           #  14    0x30618  1      OPC=nop             
  nop                           #  15    0x30619  1      OPC=nop             
  nop                           #  16    0x3061a  1      OPC=nop             
  nop                           #  17    0x3061b  1      OPC=nop             
  nop                           #  18    0x3061c  1      OPC=nop             
  nop                           #  19    0x3061d  1      OPC=nop             
  nop                           #  20    0x3061e  1      OPC=nop             
  nop                           #  21    0x3061f  1      OPC=nop             
  nop                           #  22    0x30620  1      OPC=nop             
  nop                           #  23    0x30621  1      OPC=nop             
  nop                           #  24    0x30622  1      OPC=nop             
  nop                           #  25    0x30623  1      OPC=nop             
  nop                           #  26    0x30624  1      OPC=nop             
  nop                           #  27    0x30625  1      OPC=nop             
  nop                           #  28    0x30626  1      OPC=nop             
                                                                             
.size NACL_AnnotateBenignRaceSized, .-NACL_AnnotateBenignRaceSized


  .text
  .globl NACL_AnnotateBenignRace
  .type NACL_AnnotateBenignRace, @function

#! file-offset 0x6fec0
#! rip-offset  0x2fec0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBenignRace:  #        0x2fec0  0      OPC=<label>         
  popq %r11                #  1     0x2fec0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fec2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fec9  1      OPC=nop             
  nop                      #  4     0x2feca  1      OPC=nop             
  nop                      #  5     0x2fecb  1      OPC=nop             
  nop                      #  6     0x2fecc  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fecd  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fed0  3      OPC=jmpq_r64        
  nop                      #  9     0x2fed3  1      OPC=nop             
  nop                      #  10    0x2fed4  1      OPC=nop             
  nop                      #  11    0x2fed5  1      OPC=nop             
  nop                      #  12    0x2fed6  1      OPC=nop             
  nop                      #  13    0x2fed7  1      OPC=nop             
  nop                      #  14    0x2fed8  1      OPC=nop             
  nop                      #  15    0x2fed9  1      OPC=nop             
  nop                      #  16    0x2feda  1      OPC=nop             
  nop                      #  17    0x2fedb  1      OPC=nop             
  nop                      #  18    0x2fedc  1      OPC=nop             
  nop                      #  19    0x2fedd  1      OPC=nop             
  nop                      #  20    0x2fede  1      OPC=nop             
  nop                      #  21    0x2fedf  1      OPC=nop             
  nop                      #  22    0x2fee0  1      OPC=nop             
  nop                      #  23    0x2fee1  1      OPC=nop             
  nop                      #  24    0x2fee2  1      OPC=nop             
  nop                      #  25    0x2fee3  1      OPC=nop             
  nop                      #  26    0x2fee4  1      OPC=nop             
  nop                      #  27    0x2fee5  1      OPC=nop             
  nop                      #  28    0x2fee6  1      OPC=nop             
                                                                        
.size NACL_AnnotateBenignRace, .-NACL_AnnotateBenignRace


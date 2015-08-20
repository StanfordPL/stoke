  .text
  .globl NACL_AnnotateFlushExpectedRaces
  .type NACL_AnnotateFlushExpectedRaces, @function

#! file-offset 0x6fea0
#! rip-offset  0x2fea0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateFlushExpectedRaces:  #        0x2fea0  0      OPC=<label>         
  popq %r11                        #  1     0x2fea0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  2     0x2fea2  7      OPC=andl_r32_imm32  
  nop                              #  3     0x2fea9  1      OPC=nop             
  nop                              #  4     0x2feaa  1      OPC=nop             
  nop                              #  5     0x2feab  1      OPC=nop             
  nop                              #  6     0x2feac  1      OPC=nop             
  addq %r15, %r11                  #  7     0x2fead  3      OPC=addq_r64_r64    
  jmpq %r11                        #  8     0x2feb0  3      OPC=jmpq_r64        
  nop                              #  9     0x2feb3  1      OPC=nop             
  nop                              #  10    0x2feb4  1      OPC=nop             
  nop                              #  11    0x2feb5  1      OPC=nop             
  nop                              #  12    0x2feb6  1      OPC=nop             
  nop                              #  13    0x2feb7  1      OPC=nop             
  nop                              #  14    0x2feb8  1      OPC=nop             
  nop                              #  15    0x2feb9  1      OPC=nop             
  nop                              #  16    0x2feba  1      OPC=nop             
  nop                              #  17    0x2febb  1      OPC=nop             
  nop                              #  18    0x2febc  1      OPC=nop             
  nop                              #  19    0x2febd  1      OPC=nop             
  nop                              #  20    0x2febe  1      OPC=nop             
  nop                              #  21    0x2febf  1      OPC=nop             
  nop                              #  22    0x2fec0  1      OPC=nop             
  nop                              #  23    0x2fec1  1      OPC=nop             
  nop                              #  24    0x2fec2  1      OPC=nop             
  nop                              #  25    0x2fec3  1      OPC=nop             
  nop                              #  26    0x2fec4  1      OPC=nop             
  nop                              #  27    0x2fec5  1      OPC=nop             
  nop                              #  28    0x2fec6  1      OPC=nop             
                                                                                
.size NACL_AnnotateFlushExpectedRaces, .-NACL_AnnotateFlushExpectedRaces


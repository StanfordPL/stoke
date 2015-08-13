  .text
  .globl NACL_AnnotateFlushExpectedRaces
  .type NACL_AnnotateFlushExpectedRaces, @function

#! file-offset 0x6fba0
#! rip-offset  0x2fba0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateFlushExpectedRaces:  #        0x2fba0  0      OPC=<label>         
  popq %r11                        #  1     0x2fba0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  2     0x2fba2  7      OPC=andl_r32_imm32  
  nop                              #  3     0x2fba9  1      OPC=nop             
  nop                              #  4     0x2fbaa  1      OPC=nop             
  nop                              #  5     0x2fbab  1      OPC=nop             
  nop                              #  6     0x2fbac  1      OPC=nop             
  addq %r15, %r11                  #  7     0x2fbad  3      OPC=addq_r64_r64    
  jmpq %r11                        #  8     0x2fbb0  3      OPC=jmpq_r64        
  nop                              #  9     0x2fbb3  1      OPC=nop             
  nop                              #  10    0x2fbb4  1      OPC=nop             
  nop                              #  11    0x2fbb5  1      OPC=nop             
  nop                              #  12    0x2fbb6  1      OPC=nop             
  nop                              #  13    0x2fbb7  1      OPC=nop             
  nop                              #  14    0x2fbb8  1      OPC=nop             
  nop                              #  15    0x2fbb9  1      OPC=nop             
  nop                              #  16    0x2fbba  1      OPC=nop             
  nop                              #  17    0x2fbbb  1      OPC=nop             
  nop                              #  18    0x2fbbc  1      OPC=nop             
  nop                              #  19    0x2fbbd  1      OPC=nop             
  nop                              #  20    0x2fbbe  1      OPC=nop             
  nop                              #  21    0x2fbbf  1      OPC=nop             
  nop                              #  22    0x2fbc0  1      OPC=nop             
  nop                              #  23    0x2fbc1  1      OPC=nop             
  nop                              #  24    0x2fbc2  1      OPC=nop             
  nop                              #  25    0x2fbc3  1      OPC=nop             
  nop                              #  26    0x2fbc4  1      OPC=nop             
  nop                              #  27    0x2fbc5  1      OPC=nop             
  nop                              #  28    0x2fbc6  1      OPC=nop             
                                                                                
.size NACL_AnnotateFlushExpectedRaces, .-NACL_AnnotateFlushExpectedRaces


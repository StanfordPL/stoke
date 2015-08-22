  .text
  .globl NACL_AnnotateFlushExpectedRaces
  .type NACL_AnnotateFlushExpectedRaces, @function

#! file-offset 0x705c0
#! rip-offset  0x305c0
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateFlushExpectedRaces:  #        0x305c0  0      OPC=<label>         
  popq %r11                        #  1     0x305c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  2     0x305c2  7      OPC=andl_r32_imm32  
  nop                              #  3     0x305c9  1      OPC=nop             
  nop                              #  4     0x305ca  1      OPC=nop             
  nop                              #  5     0x305cb  1      OPC=nop             
  nop                              #  6     0x305cc  1      OPC=nop             
  addq %r15, %r11                  #  7     0x305cd  3      OPC=addq_r64_r64    
  jmpq %r11                        #  8     0x305d0  3      OPC=jmpq_r64        
  nop                              #  9     0x305d3  1      OPC=nop             
  nop                              #  10    0x305d4  1      OPC=nop             
  nop                              #  11    0x305d5  1      OPC=nop             
  nop                              #  12    0x305d6  1      OPC=nop             
  nop                              #  13    0x305d7  1      OPC=nop             
  nop                              #  14    0x305d8  1      OPC=nop             
  nop                              #  15    0x305d9  1      OPC=nop             
  nop                              #  16    0x305da  1      OPC=nop             
  nop                              #  17    0x305db  1      OPC=nop             
  nop                              #  18    0x305dc  1      OPC=nop             
  nop                              #  19    0x305dd  1      OPC=nop             
  nop                              #  20    0x305de  1      OPC=nop             
  nop                              #  21    0x305df  1      OPC=nop             
  nop                              #  22    0x305e0  1      OPC=nop             
  nop                              #  23    0x305e1  1      OPC=nop             
  nop                              #  24    0x305e2  1      OPC=nop             
  nop                              #  25    0x305e3  1      OPC=nop             
  nop                              #  26    0x305e4  1      OPC=nop             
  nop                              #  27    0x305e5  1      OPC=nop             
  nop                              #  28    0x305e6  1      OPC=nop             
                                                                                
.size NACL_AnnotateFlushExpectedRaces, .-NACL_AnnotateFlushExpectedRaces


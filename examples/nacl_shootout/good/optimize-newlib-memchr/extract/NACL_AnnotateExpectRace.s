  .text
  .globl NACL_AnnotateExpectRace
  .type NACL_AnnotateExpectRace, @function

#! file-offset 0x705a0
#! rip-offset  0x305a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateExpectRace:  #        0x305a0  0      OPC=<label>         
  popq %r11                #  1     0x305a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x305a2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x305a9  1      OPC=nop             
  nop                      #  4     0x305aa  1      OPC=nop             
  nop                      #  5     0x305ab  1      OPC=nop             
  nop                      #  6     0x305ac  1      OPC=nop             
  addq %r15, %r11          #  7     0x305ad  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x305b0  3      OPC=jmpq_r64        
  nop                      #  9     0x305b3  1      OPC=nop             
  nop                      #  10    0x305b4  1      OPC=nop             
  nop                      #  11    0x305b5  1      OPC=nop             
  nop                      #  12    0x305b6  1      OPC=nop             
  nop                      #  13    0x305b7  1      OPC=nop             
  nop                      #  14    0x305b8  1      OPC=nop             
  nop                      #  15    0x305b9  1      OPC=nop             
  nop                      #  16    0x305ba  1      OPC=nop             
  nop                      #  17    0x305bb  1      OPC=nop             
  nop                      #  18    0x305bc  1      OPC=nop             
  nop                      #  19    0x305bd  1      OPC=nop             
  nop                      #  20    0x305be  1      OPC=nop             
  nop                      #  21    0x305bf  1      OPC=nop             
  nop                      #  22    0x305c0  1      OPC=nop             
  nop                      #  23    0x305c1  1      OPC=nop             
  nop                      #  24    0x305c2  1      OPC=nop             
  nop                      #  25    0x305c3  1      OPC=nop             
  nop                      #  26    0x305c4  1      OPC=nop             
  nop                      #  27    0x305c5  1      OPC=nop             
  nop                      #  28    0x305c6  1      OPC=nop             
                                                                        
.size NACL_AnnotateExpectRace, .-NACL_AnnotateExpectRace


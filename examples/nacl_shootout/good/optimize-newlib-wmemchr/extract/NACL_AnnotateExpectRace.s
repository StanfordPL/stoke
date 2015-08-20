  .text
  .globl NACL_AnnotateExpectRace
  .type NACL_AnnotateExpectRace, @function

#! file-offset 0x6fe80
#! rip-offset  0x2fe80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateExpectRace:  #        0x2fe80  0      OPC=<label>         
  popq %r11                #  1     0x2fe80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fe82  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fe89  1      OPC=nop             
  nop                      #  4     0x2fe8a  1      OPC=nop             
  nop                      #  5     0x2fe8b  1      OPC=nop             
  nop                      #  6     0x2fe8c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fe8d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fe90  3      OPC=jmpq_r64        
  nop                      #  9     0x2fe93  1      OPC=nop             
  nop                      #  10    0x2fe94  1      OPC=nop             
  nop                      #  11    0x2fe95  1      OPC=nop             
  nop                      #  12    0x2fe96  1      OPC=nop             
  nop                      #  13    0x2fe97  1      OPC=nop             
  nop                      #  14    0x2fe98  1      OPC=nop             
  nop                      #  15    0x2fe99  1      OPC=nop             
  nop                      #  16    0x2fe9a  1      OPC=nop             
  nop                      #  17    0x2fe9b  1      OPC=nop             
  nop                      #  18    0x2fe9c  1      OPC=nop             
  nop                      #  19    0x2fe9d  1      OPC=nop             
  nop                      #  20    0x2fe9e  1      OPC=nop             
  nop                      #  21    0x2fe9f  1      OPC=nop             
  nop                      #  22    0x2fea0  1      OPC=nop             
  nop                      #  23    0x2fea1  1      OPC=nop             
  nop                      #  24    0x2fea2  1      OPC=nop             
  nop                      #  25    0x2fea3  1      OPC=nop             
  nop                      #  26    0x2fea4  1      OPC=nop             
  nop                      #  27    0x2fea5  1      OPC=nop             
  nop                      #  28    0x2fea6  1      OPC=nop             
                                                                        
.size NACL_AnnotateExpectRace, .-NACL_AnnotateExpectRace


  .text
  .globl NACL_AnnotateExpectRace
  .type NACL_AnnotateExpectRace, @function

#! file-offset 0x6fb80
#! rip-offset  0x2fb80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateExpectRace:  #        0x2fb80  0      OPC=<label>         
  popq %r11                #  1     0x2fb80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fb82  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fb89  1      OPC=nop             
  nop                      #  4     0x2fb8a  1      OPC=nop             
  nop                      #  5     0x2fb8b  1      OPC=nop             
  nop                      #  6     0x2fb8c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fb8d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fb90  3      OPC=jmpq_r64        
  nop                      #  9     0x2fb93  1      OPC=nop             
  nop                      #  10    0x2fb94  1      OPC=nop             
  nop                      #  11    0x2fb95  1      OPC=nop             
  nop                      #  12    0x2fb96  1      OPC=nop             
  nop                      #  13    0x2fb97  1      OPC=nop             
  nop                      #  14    0x2fb98  1      OPC=nop             
  nop                      #  15    0x2fb99  1      OPC=nop             
  nop                      #  16    0x2fb9a  1      OPC=nop             
  nop                      #  17    0x2fb9b  1      OPC=nop             
  nop                      #  18    0x2fb9c  1      OPC=nop             
  nop                      #  19    0x2fb9d  1      OPC=nop             
  nop                      #  20    0x2fb9e  1      OPC=nop             
  nop                      #  21    0x2fb9f  1      OPC=nop             
  nop                      #  22    0x2fba0  1      OPC=nop             
  nop                      #  23    0x2fba1  1      OPC=nop             
  nop                      #  24    0x2fba2  1      OPC=nop             
  nop                      #  25    0x2fba3  1      OPC=nop             
  nop                      #  26    0x2fba4  1      OPC=nop             
  nop                      #  27    0x2fba5  1      OPC=nop             
  nop                      #  28    0x2fba6  1      OPC=nop             
                                                                        
.size NACL_AnnotateExpectRace, .-NACL_AnnotateExpectRace


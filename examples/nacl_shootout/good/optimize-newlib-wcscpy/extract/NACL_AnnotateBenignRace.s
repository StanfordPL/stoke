  .text
  .globl NACL_AnnotateBenignRace
  .type NACL_AnnotateBenignRace, @function

#! file-offset 0x6fbc0
#! rip-offset  0x2fbc0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateBenignRace:  #        0x2fbc0  0      OPC=<label>         
  popq %r11                #  1     0x2fbc0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2fbc2  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2fbc9  1      OPC=nop             
  nop                      #  4     0x2fbca  1      OPC=nop             
  nop                      #  5     0x2fbcb  1      OPC=nop             
  nop                      #  6     0x2fbcc  1      OPC=nop             
  addq %r15, %r11          #  7     0x2fbcd  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2fbd0  3      OPC=jmpq_r64        
  nop                      #  9     0x2fbd3  1      OPC=nop             
  nop                      #  10    0x2fbd4  1      OPC=nop             
  nop                      #  11    0x2fbd5  1      OPC=nop             
  nop                      #  12    0x2fbd6  1      OPC=nop             
  nop                      #  13    0x2fbd7  1      OPC=nop             
  nop                      #  14    0x2fbd8  1      OPC=nop             
  nop                      #  15    0x2fbd9  1      OPC=nop             
  nop                      #  16    0x2fbda  1      OPC=nop             
  nop                      #  17    0x2fbdb  1      OPC=nop             
  nop                      #  18    0x2fbdc  1      OPC=nop             
  nop                      #  19    0x2fbdd  1      OPC=nop             
  nop                      #  20    0x2fbde  1      OPC=nop             
  nop                      #  21    0x2fbdf  1      OPC=nop             
  nop                      #  22    0x2fbe0  1      OPC=nop             
  nop                      #  23    0x2fbe1  1      OPC=nop             
  nop                      #  24    0x2fbe2  1      OPC=nop             
  nop                      #  25    0x2fbe3  1      OPC=nop             
  nop                      #  26    0x2fbe4  1      OPC=nop             
  nop                      #  27    0x2fbe5  1      OPC=nop             
  nop                      #  28    0x2fbe6  1      OPC=nop             
                                                                        
.size NACL_AnnotateBenignRace, .-NACL_AnnotateBenignRace


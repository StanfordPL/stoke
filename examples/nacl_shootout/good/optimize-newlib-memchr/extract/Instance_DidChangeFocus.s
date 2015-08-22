  .text
  .globl Instance_DidChangeFocus
  .type Instance_DidChangeFocus, @function

#! file-offset 0x6cd80
#! rip-offset  0x2cd80
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Instance_DidChangeFocus:  #        0x2cd80  0      OPC=<label>         
  popq %r11                #  1     0x2cd80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2cd82  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2cd89  1      OPC=nop             
  nop                      #  4     0x2cd8a  1      OPC=nop             
  nop                      #  5     0x2cd8b  1      OPC=nop             
  nop                      #  6     0x2cd8c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2cd8d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2cd90  3      OPC=jmpq_r64        
  nop                      #  9     0x2cd93  1      OPC=nop             
  nop                      #  10    0x2cd94  1      OPC=nop             
  nop                      #  11    0x2cd95  1      OPC=nop             
  nop                      #  12    0x2cd96  1      OPC=nop             
  nop                      #  13    0x2cd97  1      OPC=nop             
  nop                      #  14    0x2cd98  1      OPC=nop             
  nop                      #  15    0x2cd99  1      OPC=nop             
  nop                      #  16    0x2cd9a  1      OPC=nop             
  nop                      #  17    0x2cd9b  1      OPC=nop             
  nop                      #  18    0x2cd9c  1      OPC=nop             
  nop                      #  19    0x2cd9d  1      OPC=nop             
  nop                      #  20    0x2cd9e  1      OPC=nop             
  nop                      #  21    0x2cd9f  1      OPC=nop             
  nop                      #  22    0x2cda0  1      OPC=nop             
  nop                      #  23    0x2cda1  1      OPC=nop             
  nop                      #  24    0x2cda2  1      OPC=nop             
  nop                      #  25    0x2cda3  1      OPC=nop             
  nop                      #  26    0x2cda4  1      OPC=nop             
  nop                      #  27    0x2cda5  1      OPC=nop             
  nop                      #  28    0x2cda6  1      OPC=nop             
                                                                        
.size Instance_DidChangeFocus, .-Instance_DidChangeFocus


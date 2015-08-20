  .text
  .globl Instance_DidChangeFocus
  .type Instance_DidChangeFocus, @function

#! file-offset 0x6c660
#! rip-offset  0x2c660
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
.Instance_DidChangeFocus:  #        0x2c660  0      OPC=<label>         
  popq %r11                #  1     0x2c660  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  2     0x2c662  7      OPC=andl_r32_imm32  
  nop                      #  3     0x2c669  1      OPC=nop             
  nop                      #  4     0x2c66a  1      OPC=nop             
  nop                      #  5     0x2c66b  1      OPC=nop             
  nop                      #  6     0x2c66c  1      OPC=nop             
  addq %r15, %r11          #  7     0x2c66d  3      OPC=addq_r64_r64    
  jmpq %r11                #  8     0x2c670  3      OPC=jmpq_r64        
  nop                      #  9     0x2c673  1      OPC=nop             
  nop                      #  10    0x2c674  1      OPC=nop             
  nop                      #  11    0x2c675  1      OPC=nop             
  nop                      #  12    0x2c676  1      OPC=nop             
  nop                      #  13    0x2c677  1      OPC=nop             
  nop                      #  14    0x2c678  1      OPC=nop             
  nop                      #  15    0x2c679  1      OPC=nop             
  nop                      #  16    0x2c67a  1      OPC=nop             
  nop                      #  17    0x2c67b  1      OPC=nop             
  nop                      #  18    0x2c67c  1      OPC=nop             
  nop                      #  19    0x2c67d  1      OPC=nop             
  nop                      #  20    0x2c67e  1      OPC=nop             
  nop                      #  21    0x2c67f  1      OPC=nop             
  nop                      #  22    0x2c680  1      OPC=nop             
  nop                      #  23    0x2c681  1      OPC=nop             
  nop                      #  24    0x2c682  1      OPC=nop             
  nop                      #  25    0x2c683  1      OPC=nop             
  nop                      #  26    0x2c684  1      OPC=nop             
  nop                      #  27    0x2c685  1      OPC=nop             
  nop                      #  28    0x2c686  1      OPC=nop             
                                                                        
.size Instance_DidChangeFocus, .-Instance_DidChangeFocus


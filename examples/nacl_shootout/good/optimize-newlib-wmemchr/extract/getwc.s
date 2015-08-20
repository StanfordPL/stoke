  .text
  .globl getwc
  .type getwc, @function

#! file-offset 0x15e700
#! rip-offset  0x11e700
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.getwc:            #        0x11e700  0      OPC=<label>       
  movl %edi, %edi  #  1     0x11e700  2      OPC=movl_r32_r32  
  jmpq .fgetwc     #  2     0x11e702  5      OPC=jmpq_label_1  
  nop              #  3     0x11e707  1      OPC=nop           
  nop              #  4     0x11e708  1      OPC=nop           
  nop              #  5     0x11e709  1      OPC=nop           
  nop              #  6     0x11e70a  1      OPC=nop           
  nop              #  7     0x11e70b  1      OPC=nop           
  nop              #  8     0x11e70c  1      OPC=nop           
  nop              #  9     0x11e70d  1      OPC=nop           
  nop              #  10    0x11e70e  1      OPC=nop           
  nop              #  11    0x11e70f  1      OPC=nop           
  nop              #  12    0x11e710  1      OPC=nop           
  nop              #  13    0x11e711  1      OPC=nop           
  nop              #  14    0x11e712  1      OPC=nop           
  nop              #  15    0x11e713  1      OPC=nop           
  nop              #  16    0x11e714  1      OPC=nop           
  nop              #  17    0x11e715  1      OPC=nop           
  nop              #  18    0x11e716  1      OPC=nop           
  nop              #  19    0x11e717  1      OPC=nop           
  nop              #  20    0x11e718  1      OPC=nop           
  nop              #  21    0x11e719  1      OPC=nop           
  nop              #  22    0x11e71a  1      OPC=nop           
  nop              #  23    0x11e71b  1      OPC=nop           
  nop              #  24    0x11e71c  1      OPC=nop           
  nop              #  25    0x11e71d  1      OPC=nop           
  nop              #  26    0x11e71e  1      OPC=nop           
  nop              #  27    0x11e71f  1      OPC=nop           
                                                               
.size getwc, .-getwc


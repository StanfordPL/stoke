  .text
  .globl getwc
  .type getwc, @function

#! file-offset 0x15e400
#! rip-offset  0x11e400
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.getwc:            #        0x11e400  0      OPC=<label>       
  movl %edi, %edi  #  1     0x11e400  2      OPC=movl_r32_r32  
  jmpq .fgetwc     #  2     0x11e402  5      OPC=jmpq_label_1  
  nop              #  3     0x11e407  1      OPC=nop           
  nop              #  4     0x11e408  1      OPC=nop           
  nop              #  5     0x11e409  1      OPC=nop           
  nop              #  6     0x11e40a  1      OPC=nop           
  nop              #  7     0x11e40b  1      OPC=nop           
  nop              #  8     0x11e40c  1      OPC=nop           
  nop              #  9     0x11e40d  1      OPC=nop           
  nop              #  10    0x11e40e  1      OPC=nop           
  nop              #  11    0x11e40f  1      OPC=nop           
  nop              #  12    0x11e410  1      OPC=nop           
  nop              #  13    0x11e411  1      OPC=nop           
  nop              #  14    0x11e412  1      OPC=nop           
  nop              #  15    0x11e413  1      OPC=nop           
  nop              #  16    0x11e414  1      OPC=nop           
  nop              #  17    0x11e415  1      OPC=nop           
  nop              #  18    0x11e416  1      OPC=nop           
  nop              #  19    0x11e417  1      OPC=nop           
  nop              #  20    0x11e418  1      OPC=nop           
  nop              #  21    0x11e419  1      OPC=nop           
  nop              #  22    0x11e41a  1      OPC=nop           
  nop              #  23    0x11e41b  1      OPC=nop           
  nop              #  24    0x11e41c  1      OPC=nop           
  nop              #  25    0x11e41d  1      OPC=nop           
  nop              #  26    0x11e41e  1      OPC=nop           
  nop              #  27    0x11e41f  1      OPC=nop           
                                                               
.size getwc, .-getwc


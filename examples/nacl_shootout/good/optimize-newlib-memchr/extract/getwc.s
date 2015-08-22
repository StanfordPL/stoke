  .text
  .globl getwc
  .type getwc, @function

#! file-offset 0x15ee20
#! rip-offset  0x11ee20
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.getwc:            #        0x11ee20  0      OPC=<label>       
  movl %edi, %edi  #  1     0x11ee20  2      OPC=movl_r32_r32  
  jmpq .fgetwc     #  2     0x11ee22  5      OPC=jmpq_label_1  
  nop              #  3     0x11ee27  1      OPC=nop           
  nop              #  4     0x11ee28  1      OPC=nop           
  nop              #  5     0x11ee29  1      OPC=nop           
  nop              #  6     0x11ee2a  1      OPC=nop           
  nop              #  7     0x11ee2b  1      OPC=nop           
  nop              #  8     0x11ee2c  1      OPC=nop           
  nop              #  9     0x11ee2d  1      OPC=nop           
  nop              #  10    0x11ee2e  1      OPC=nop           
  nop              #  11    0x11ee2f  1      OPC=nop           
  nop              #  12    0x11ee30  1      OPC=nop           
  nop              #  13    0x11ee31  1      OPC=nop           
  nop              #  14    0x11ee32  1      OPC=nop           
  nop              #  15    0x11ee33  1      OPC=nop           
  nop              #  16    0x11ee34  1      OPC=nop           
  nop              #  17    0x11ee35  1      OPC=nop           
  nop              #  18    0x11ee36  1      OPC=nop           
  nop              #  19    0x11ee37  1      OPC=nop           
  nop              #  20    0x11ee38  1      OPC=nop           
  nop              #  21    0x11ee39  1      OPC=nop           
  nop              #  22    0x11ee3a  1      OPC=nop           
  nop              #  23    0x11ee3b  1      OPC=nop           
  nop              #  24    0x11ee3c  1      OPC=nop           
  nop              #  25    0x11ee3d  1      OPC=nop           
  nop              #  26    0x11ee3e  1      OPC=nop           
  nop              #  27    0x11ee3f  1      OPC=nop           
                                                               
.size getwc, .-getwc


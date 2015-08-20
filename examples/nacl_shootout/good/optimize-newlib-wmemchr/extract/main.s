  .text
  .globl main
  .type main, @function

#! file-offset 0x6d040
#! rip-offset  0x2d040
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  Opcode            
.main:                   #        0x2d040  0      OPC=<label>       
  jmpq .PpapiPluginMain  #  1     0x2d040  5      OPC=jmpq_label_1  
  nop                    #  2     0x2d045  1      OPC=nop           
  nop                    #  3     0x2d046  1      OPC=nop           
  nop                    #  4     0x2d047  1      OPC=nop           
  nop                    #  5     0x2d048  1      OPC=nop           
  nop                    #  6     0x2d049  1      OPC=nop           
  nop                    #  7     0x2d04a  1      OPC=nop           
  nop                    #  8     0x2d04b  1      OPC=nop           
  nop                    #  9     0x2d04c  1      OPC=nop           
  nop                    #  10    0x2d04d  1      OPC=nop           
  nop                    #  11    0x2d04e  1      OPC=nop           
  nop                    #  12    0x2d04f  1      OPC=nop           
  nop                    #  13    0x2d050  1      OPC=nop           
  nop                    #  14    0x2d051  1      OPC=nop           
  nop                    #  15    0x2d052  1      OPC=nop           
  nop                    #  16    0x2d053  1      OPC=nop           
  nop                    #  17    0x2d054  1      OPC=nop           
  nop                    #  18    0x2d055  1      OPC=nop           
  nop                    #  19    0x2d056  1      OPC=nop           
  nop                    #  20    0x2d057  1      OPC=nop           
  nop                    #  21    0x2d058  1      OPC=nop           
  nop                    #  22    0x2d059  1      OPC=nop           
  nop                    #  23    0x2d05a  1      OPC=nop           
  nop                    #  24    0x2d05b  1      OPC=nop           
  nop                    #  25    0x2d05c  1      OPC=nop           
  nop                    #  26    0x2d05d  1      OPC=nop           
  nop                    #  27    0x2d05e  1      OPC=nop           
  nop                    #  28    0x2d05f  1      OPC=nop           
                                                                    
.size main, .-main


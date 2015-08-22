  .text
  .globl main
  .type main, @function

#! file-offset 0x6d760
#! rip-offset  0x2d760
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  Opcode            
.main:                   #        0x2d760  0      OPC=<label>       
  jmpq .PpapiPluginMain  #  1     0x2d760  5      OPC=jmpq_label_1  
  nop                    #  2     0x2d765  1      OPC=nop           
  nop                    #  3     0x2d766  1      OPC=nop           
  nop                    #  4     0x2d767  1      OPC=nop           
  nop                    #  5     0x2d768  1      OPC=nop           
  nop                    #  6     0x2d769  1      OPC=nop           
  nop                    #  7     0x2d76a  1      OPC=nop           
  nop                    #  8     0x2d76b  1      OPC=nop           
  nop                    #  9     0x2d76c  1      OPC=nop           
  nop                    #  10    0x2d76d  1      OPC=nop           
  nop                    #  11    0x2d76e  1      OPC=nop           
  nop                    #  12    0x2d76f  1      OPC=nop           
  nop                    #  13    0x2d770  1      OPC=nop           
  nop                    #  14    0x2d771  1      OPC=nop           
  nop                    #  15    0x2d772  1      OPC=nop           
  nop                    #  16    0x2d773  1      OPC=nop           
  nop                    #  17    0x2d774  1      OPC=nop           
  nop                    #  18    0x2d775  1      OPC=nop           
  nop                    #  19    0x2d776  1      OPC=nop           
  nop                    #  20    0x2d777  1      OPC=nop           
  nop                    #  21    0x2d778  1      OPC=nop           
  nop                    #  22    0x2d779  1      OPC=nop           
  nop                    #  23    0x2d77a  1      OPC=nop           
  nop                    #  24    0x2d77b  1      OPC=nop           
  nop                    #  25    0x2d77c  1      OPC=nop           
  nop                    #  26    0x2d77d  1      OPC=nop           
  nop                    #  27    0x2d77e  1      OPC=nop           
  nop                    #  28    0x2d77f  1      OPC=nop           
                                                                    
.size main, .-main


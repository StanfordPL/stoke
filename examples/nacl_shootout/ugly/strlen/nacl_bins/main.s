  .text
  .globl main
  .type main, @function

#! file-offset 0x6c800
#! rip-offset  0x2c800
#! capacity    32 bytes

# Text                   #  Line  RIP      Bytes  Opcode    
.main:                   #        0x2c800  0      OPC=0     
  jmpq .PpapiPluginMain  #  1     0x2c800  5      OPC=930   
  nop                    #  2     0x2c805  1      OPC=1343  
  nop                    #  3     0x2c806  1      OPC=1343  
  nop                    #  4     0x2c807  1      OPC=1343  
  nop                    #  5     0x2c808  1      OPC=1343  
  nop                    #  6     0x2c809  1      OPC=1343  
  nop                    #  7     0x2c80a  1      OPC=1343  
  nop                    #  8     0x2c80b  1      OPC=1343  
  nop                    #  9     0x2c80c  1      OPC=1343  
  nop                    #  10    0x2c80d  1      OPC=1343  
  nop                    #  11    0x2c80e  1      OPC=1343  
  nop                    #  12    0x2c80f  1      OPC=1343  
  nop                    #  13    0x2c810  1      OPC=1343  
  nop                    #  14    0x2c811  1      OPC=1343  
  nop                    #  15    0x2c812  1      OPC=1343  
  nop                    #  16    0x2c813  1      OPC=1343  
  nop                    #  17    0x2c814  1      OPC=1343  
  nop                    #  18    0x2c815  1      OPC=1343  
  nop                    #  19    0x2c816  1      OPC=1343  
  nop                    #  20    0x2c817  1      OPC=1343  
  nop                    #  21    0x2c818  1      OPC=1343  
  nop                    #  22    0x2c819  1      OPC=1343  
  nop                    #  23    0x2c81a  1      OPC=1343  
  nop                    #  24    0x2c81b  1      OPC=1343  
  nop                    #  25    0x2c81c  1      OPC=1343  
  nop                    #  26    0x2c81d  1      OPC=1343  
  nop                    #  27    0x2c81e  1      OPC=1343  
  nop                    #  28    0x2c81f  1      OPC=1343  
                                                            
.size main, .-main


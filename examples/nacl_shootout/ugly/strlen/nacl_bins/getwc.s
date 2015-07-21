  .text
  .globl getwc
  .type getwc, @function

#! file-offset 0x15dec0
#! rip-offset  0x11dec0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.getwc:            #        0x11dec0  0      OPC=0     
  movl %edi, %edi  #  1     0x11dec0  2      OPC=1157  
  jmpq .fgetwc     #  2     0x11dec2  5      OPC=930   
  nop              #  3     0x11dec7  1      OPC=1343  
  nop              #  4     0x11dec8  1      OPC=1343  
  nop              #  5     0x11dec9  1      OPC=1343  
  nop              #  6     0x11deca  1      OPC=1343  
  nop              #  7     0x11decb  1      OPC=1343  
  nop              #  8     0x11decc  1      OPC=1343  
  nop              #  9     0x11decd  1      OPC=1343  
  nop              #  10    0x11dece  1      OPC=1343  
  nop              #  11    0x11decf  1      OPC=1343  
  nop              #  12    0x11ded0  1      OPC=1343  
  nop              #  13    0x11ded1  1      OPC=1343  
  nop              #  14    0x11ded2  1      OPC=1343  
  nop              #  15    0x11ded3  1      OPC=1343  
  nop              #  16    0x11ded4  1      OPC=1343  
  nop              #  17    0x11ded5  1      OPC=1343  
  nop              #  18    0x11ded6  1      OPC=1343  
  nop              #  19    0x11ded7  1      OPC=1343  
  nop              #  20    0x11ded8  1      OPC=1343  
  nop              #  21    0x11ded9  1      OPC=1343  
  nop              #  22    0x11deda  1      OPC=1343  
  nop              #  23    0x11dedb  1      OPC=1343  
  nop              #  24    0x11dedc  1      OPC=1343  
  nop              #  25    0x11dedd  1      OPC=1343  
  nop              #  26    0x11dede  1      OPC=1343  
  nop              #  27    0x11dedf  1      OPC=1343  
                                                       
.size getwc, .-getwc


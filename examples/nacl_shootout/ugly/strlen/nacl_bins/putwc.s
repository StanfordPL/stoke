  .text
  .globl putwc
  .type putwc, @function

#! file-offset 0x163600
#! rip-offset  0x123600
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.putwc:            #        0x123600  0      OPC=0     
  movl %esi, %esi  #  1     0x123600  2      OPC=1157  
  jmpq .fputwc     #  2     0x123602  5      OPC=930   
  nop              #  3     0x123607  1      OPC=1343  
  nop              #  4     0x123608  1      OPC=1343  
  nop              #  5     0x123609  1      OPC=1343  
  nop              #  6     0x12360a  1      OPC=1343  
  nop              #  7     0x12360b  1      OPC=1343  
  nop              #  8     0x12360c  1      OPC=1343  
  nop              #  9     0x12360d  1      OPC=1343  
  nop              #  10    0x12360e  1      OPC=1343  
  nop              #  11    0x12360f  1      OPC=1343  
  nop              #  12    0x123610  1      OPC=1343  
  nop              #  13    0x123611  1      OPC=1343  
  nop              #  14    0x123612  1      OPC=1343  
  nop              #  15    0x123613  1      OPC=1343  
  nop              #  16    0x123614  1      OPC=1343  
  nop              #  17    0x123615  1      OPC=1343  
  nop              #  18    0x123616  1      OPC=1343  
  nop              #  19    0x123617  1      OPC=1343  
  nop              #  20    0x123618  1      OPC=1343  
  nop              #  21    0x123619  1      OPC=1343  
  nop              #  22    0x12361a  1      OPC=1343  
  nop              #  23    0x12361b  1      OPC=1343  
  nop              #  24    0x12361c  1      OPC=1343  
  nop              #  25    0x12361d  1      OPC=1343  
  nop              #  26    0x12361e  1      OPC=1343  
  nop              #  27    0x12361f  1      OPC=1343  
                                                       
.size putwc, .-putwc


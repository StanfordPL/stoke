  .text
  .globl NACL_AnnotateBenignRace
  .type NACL_AnnotateBenignRace, @function

#! file-offset 0x6f680
#! rip-offset  0x2f680
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateBenignRace:  #        0x2f680  0      OPC=0     
  popq %r11                #  1     0x2f680  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  2     0x2f682  7      OPC=131   
  nop                      #  3     0x2f689  1      OPC=1343  
  nop                      #  4     0x2f68a  1      OPC=1343  
  nop                      #  5     0x2f68b  1      OPC=1343  
  nop                      #  6     0x2f68c  1      OPC=1343  
  addq %r15, %r11          #  7     0x2f68d  3      OPC=72    
  jmpq %r11                #  8     0x2f690  3      OPC=928   
  nop                      #  9     0x2f693  1      OPC=1343  
  nop                      #  10    0x2f694  1      OPC=1343  
  nop                      #  11    0x2f695  1      OPC=1343  
  nop                      #  12    0x2f696  1      OPC=1343  
  nop                      #  13    0x2f697  1      OPC=1343  
  nop                      #  14    0x2f698  1      OPC=1343  
  nop                      #  15    0x2f699  1      OPC=1343  
  nop                      #  16    0x2f69a  1      OPC=1343  
  nop                      #  17    0x2f69b  1      OPC=1343  
  nop                      #  18    0x2f69c  1      OPC=1343  
  nop                      #  19    0x2f69d  1      OPC=1343  
  nop                      #  20    0x2f69e  1      OPC=1343  
  nop                      #  21    0x2f69f  1      OPC=1343  
  nop                      #  22    0x2f6a0  1      OPC=1343  
  nop                      #  23    0x2f6a1  1      OPC=1343  
  nop                      #  24    0x2f6a2  1      OPC=1343  
  nop                      #  25    0x2f6a3  1      OPC=1343  
  nop                      #  26    0x2f6a4  1      OPC=1343  
  nop                      #  27    0x2f6a5  1      OPC=1343  
  nop                      #  28    0x2f6a6  1      OPC=1343  
                                                              
.size NACL_AnnotateBenignRace, .-NACL_AnnotateBenignRace


  .text
  .globl NACL_AnnotateEnableRaceDetection
  .type NACL_AnnotateEnableRaceDetection, @function

#! file-offset 0x6f800
#! rip-offset  0x2f800
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateEnableRaceDetection:  #        0x2f800  0      OPC=0     
  popq %r11                         #  1     0x2f800  2      OPC=1694  
  andl $0xffffffe0, %r11d           #  2     0x2f802  7      OPC=131   
  nop                               #  3     0x2f809  1      OPC=1343  
  nop                               #  4     0x2f80a  1      OPC=1343  
  nop                               #  5     0x2f80b  1      OPC=1343  
  nop                               #  6     0x2f80c  1      OPC=1343  
  addq %r15, %r11                   #  7     0x2f80d  3      OPC=72    
  jmpq %r11                         #  8     0x2f810  3      OPC=928   
  nop                               #  9     0x2f813  1      OPC=1343  
  nop                               #  10    0x2f814  1      OPC=1343  
  nop                               #  11    0x2f815  1      OPC=1343  
  nop                               #  12    0x2f816  1      OPC=1343  
  nop                               #  13    0x2f817  1      OPC=1343  
  nop                               #  14    0x2f818  1      OPC=1343  
  nop                               #  15    0x2f819  1      OPC=1343  
  nop                               #  16    0x2f81a  1      OPC=1343  
  nop                               #  17    0x2f81b  1      OPC=1343  
  nop                               #  18    0x2f81c  1      OPC=1343  
  nop                               #  19    0x2f81d  1      OPC=1343  
  nop                               #  20    0x2f81e  1      OPC=1343  
  nop                               #  21    0x2f81f  1      OPC=1343  
  nop                               #  22    0x2f820  1      OPC=1343  
  nop                               #  23    0x2f821  1      OPC=1343  
  nop                               #  24    0x2f822  1      OPC=1343  
  nop                               #  25    0x2f823  1      OPC=1343  
  nop                               #  26    0x2f824  1      OPC=1343  
  nop                               #  27    0x2f825  1      OPC=1343  
  nop                               #  28    0x2f826  1      OPC=1343  
                                                                       
.size NACL_AnnotateEnableRaceDetection, .-NACL_AnnotateEnableRaceDetection


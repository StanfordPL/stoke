  .text
  .globl NACL_AnnotateExpectRace
  .type NACL_AnnotateExpectRace, @function

#! file-offset 0x6f640
#! rip-offset  0x2f640
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateExpectRace:  #        0x2f640  0      OPC=0     
  popq %r11                #  1     0x2f640  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  2     0x2f642  7      OPC=131   
  nop                      #  3     0x2f649  1      OPC=1343  
  nop                      #  4     0x2f64a  1      OPC=1343  
  nop                      #  5     0x2f64b  1      OPC=1343  
  nop                      #  6     0x2f64c  1      OPC=1343  
  addq %r15, %r11          #  7     0x2f64d  3      OPC=72    
  jmpq %r11                #  8     0x2f650  3      OPC=928   
  nop                      #  9     0x2f653  1      OPC=1343  
  nop                      #  10    0x2f654  1      OPC=1343  
  nop                      #  11    0x2f655  1      OPC=1343  
  nop                      #  12    0x2f656  1      OPC=1343  
  nop                      #  13    0x2f657  1      OPC=1343  
  nop                      #  14    0x2f658  1      OPC=1343  
  nop                      #  15    0x2f659  1      OPC=1343  
  nop                      #  16    0x2f65a  1      OPC=1343  
  nop                      #  17    0x2f65b  1      OPC=1343  
  nop                      #  18    0x2f65c  1      OPC=1343  
  nop                      #  19    0x2f65d  1      OPC=1343  
  nop                      #  20    0x2f65e  1      OPC=1343  
  nop                      #  21    0x2f65f  1      OPC=1343  
  nop                      #  22    0x2f660  1      OPC=1343  
  nop                      #  23    0x2f661  1      OPC=1343  
  nop                      #  24    0x2f662  1      OPC=1343  
  nop                      #  25    0x2f663  1      OPC=1343  
  nop                      #  26    0x2f664  1      OPC=1343  
  nop                      #  27    0x2f665  1      OPC=1343  
  nop                      #  28    0x2f666  1      OPC=1343  
                                                              
.size NACL_AnnotateExpectRace, .-NACL_AnnotateExpectRace


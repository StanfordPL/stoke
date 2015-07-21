  .text
  .globl Instance_HandleDocumentLoad
  .type Instance_HandleDocumentLoad, @function

#! file-offset 0x6be40
#! rip-offset  0x2be40
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.Instance_HandleDocumentLoad:  #        0x2be40  0      OPC=0     
  xorl %eax, %eax              #  1     0x2be40  2      OPC=3758  
  popq %r11                    #  2     0x2be42  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  3     0x2be44  7      OPC=131   
  nop                          #  4     0x2be4b  1      OPC=1343  
  nop                          #  5     0x2be4c  1      OPC=1343  
  nop                          #  6     0x2be4d  1      OPC=1343  
  nop                          #  7     0x2be4e  1      OPC=1343  
  addq %r15, %r11              #  8     0x2be4f  3      OPC=72    
  jmpq %r11                    #  9     0x2be52  3      OPC=928   
  nop                          #  10    0x2be55  1      OPC=1343  
  nop                          #  11    0x2be56  1      OPC=1343  
  nop                          #  12    0x2be57  1      OPC=1343  
  nop                          #  13    0x2be58  1      OPC=1343  
  nop                          #  14    0x2be59  1      OPC=1343  
  nop                          #  15    0x2be5a  1      OPC=1343  
  nop                          #  16    0x2be5b  1      OPC=1343  
  nop                          #  17    0x2be5c  1      OPC=1343  
  nop                          #  18    0x2be5d  1      OPC=1343  
  nop                          #  19    0x2be5e  1      OPC=1343  
  nop                          #  20    0x2be5f  1      OPC=1343  
  nop                          #  21    0x2be60  1      OPC=1343  
  nop                          #  22    0x2be61  1      OPC=1343  
  nop                          #  23    0x2be62  1      OPC=1343  
  nop                          #  24    0x2be63  1      OPC=1343  
  nop                          #  25    0x2be64  1      OPC=1343  
  nop                          #  26    0x2be65  1      OPC=1343  
  nop                          #  27    0x2be66  1      OPC=1343  
                                                                  
.size Instance_HandleDocumentLoad, .-Instance_HandleDocumentLoad


  .text
  .globl PPP_ShutdownModule
  .type PPP_ShutdownModule, @function

#! file-offset 0x6bee0
#! rip-offset  0x2bee0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.PPP_ShutdownModule:       #        0x2bee0  0      OPC=0     
  popq %r11                #  1     0x2bee0  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  2     0x2bee2  7      OPC=131   
  nop                      #  3     0x2bee9  1      OPC=1343  
  nop                      #  4     0x2beea  1      OPC=1343  
  nop                      #  5     0x2beeb  1      OPC=1343  
  nop                      #  6     0x2beec  1      OPC=1343  
  addq %r15, %r11          #  7     0x2beed  3      OPC=72    
  jmpq %r11                #  8     0x2bef0  3      OPC=928   
  nop                      #  9     0x2bef3  1      OPC=1343  
  nop                      #  10    0x2bef4  1      OPC=1343  
  nop                      #  11    0x2bef5  1      OPC=1343  
  nop                      #  12    0x2bef6  1      OPC=1343  
  nop                      #  13    0x2bef7  1      OPC=1343  
  nop                      #  14    0x2bef8  1      OPC=1343  
  nop                      #  15    0x2bef9  1      OPC=1343  
  nop                      #  16    0x2befa  1      OPC=1343  
  nop                      #  17    0x2befb  1      OPC=1343  
  nop                      #  18    0x2befc  1      OPC=1343  
  nop                      #  19    0x2befd  1      OPC=1343  
  nop                      #  20    0x2befe  1      OPC=1343  
  nop                      #  21    0x2beff  1      OPC=1343  
  nop                      #  22    0x2bf00  1      OPC=1343  
  nop                      #  23    0x2bf01  1      OPC=1343  
  nop                      #  24    0x2bf02  1      OPC=1343  
  nop                      #  25    0x2bf03  1      OPC=1343  
  nop                      #  26    0x2bf04  1      OPC=1343  
  nop                      #  27    0x2bf05  1      OPC=1343  
  nop                      #  28    0x2bf06  1      OPC=1343  
                                                              
.size PPP_ShutdownModule, .-PPP_ShutdownModule


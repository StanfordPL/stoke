  .text
  .globl NACL_AnnotateBarrierWaitBefore
  .type NACL_AnnotateBarrierWaitBefore, @function

#! file-offset 0x6f460
#! rip-offset  0x2f460
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateBarrierWaitBefore:  #        0x2f460  0      OPC=0     
  popq %r11                       #  1     0x2f460  2      OPC=1694  
  andl $0xffffffe0, %r11d         #  2     0x2f462  7      OPC=131   
  nop                             #  3     0x2f469  1      OPC=1343  
  nop                             #  4     0x2f46a  1      OPC=1343  
  nop                             #  5     0x2f46b  1      OPC=1343  
  nop                             #  6     0x2f46c  1      OPC=1343  
  addq %r15, %r11                 #  7     0x2f46d  3      OPC=72    
  jmpq %r11                       #  8     0x2f470  3      OPC=928   
  nop                             #  9     0x2f473  1      OPC=1343  
  nop                             #  10    0x2f474  1      OPC=1343  
  nop                             #  11    0x2f475  1      OPC=1343  
  nop                             #  12    0x2f476  1      OPC=1343  
  nop                             #  13    0x2f477  1      OPC=1343  
  nop                             #  14    0x2f478  1      OPC=1343  
  nop                             #  15    0x2f479  1      OPC=1343  
  nop                             #  16    0x2f47a  1      OPC=1343  
  nop                             #  17    0x2f47b  1      OPC=1343  
  nop                             #  18    0x2f47c  1      OPC=1343  
  nop                             #  19    0x2f47d  1      OPC=1343  
  nop                             #  20    0x2f47e  1      OPC=1343  
  nop                             #  21    0x2f47f  1      OPC=1343  
  nop                             #  22    0x2f480  1      OPC=1343  
  nop                             #  23    0x2f481  1      OPC=1343  
  nop                             #  24    0x2f482  1      OPC=1343  
  nop                             #  25    0x2f483  1      OPC=1343  
  nop                             #  26    0x2f484  1      OPC=1343  
  nop                             #  27    0x2f485  1      OPC=1343  
  nop                             #  28    0x2f486  1      OPC=1343  
                                                                     
.size NACL_AnnotateBarrierWaitBefore, .-NACL_AnnotateBarrierWaitBefore


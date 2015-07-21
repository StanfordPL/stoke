  .text
  .globl __gettzinfo
  .type __gettzinfo, @function

#! file-offset 0x188500
#! rip-offset  0x148500
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.__gettzinfo:              #        0x148500  0      OPC=0     
  popq %r11                #  1     0x148500  2      OPC=1694  
  movl $0x10071060, %eax   #  2     0x148502  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x148507  7      OPC=131   
  nop                      #  4     0x14850e  1      OPC=1343  
  nop                      #  5     0x14850f  1      OPC=1343  
  nop                      #  6     0x148510  1      OPC=1343  
  nop                      #  7     0x148511  1      OPC=1343  
  addq %r15, %r11          #  8     0x148512  3      OPC=72    
  jmpq %r11                #  9     0x148515  3      OPC=928   
  nop                      #  10    0x148518  1      OPC=1343  
  nop                      #  11    0x148519  1      OPC=1343  
  nop                      #  12    0x14851a  1      OPC=1343  
  nop                      #  13    0x14851b  1      OPC=1343  
  nop                      #  14    0x14851c  1      OPC=1343  
  nop                      #  15    0x14851d  1      OPC=1343  
  nop                      #  16    0x14851e  1      OPC=1343  
  nop                      #  17    0x14851f  1      OPC=1343  
  nop                      #  18    0x148520  1      OPC=1343  
  nop                      #  19    0x148521  1      OPC=1343  
  nop                      #  20    0x148522  1      OPC=1343  
  nop                      #  21    0x148523  1      OPC=1343  
  nop                      #  22    0x148524  1      OPC=1343  
  nop                      #  23    0x148525  1      OPC=1343  
  nop                      #  24    0x148526  1      OPC=1343  
                                                               
.size __gettzinfo, .-__gettzinfo


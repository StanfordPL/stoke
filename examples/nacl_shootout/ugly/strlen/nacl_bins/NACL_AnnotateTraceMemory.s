  .text
  .globl NACL_AnnotateTraceMemory
  .type NACL_AnnotateTraceMemory, @function

#! file-offset 0x6f700
#! rip-offset  0x2f700
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateTraceMemory:  #        0x2f700  0      OPC=0     
  popq %r11                 #  1     0x2f700  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  2     0x2f702  7      OPC=131   
  nop                       #  3     0x2f709  1      OPC=1343  
  nop                       #  4     0x2f70a  1      OPC=1343  
  nop                       #  5     0x2f70b  1      OPC=1343  
  nop                       #  6     0x2f70c  1      OPC=1343  
  addq %r15, %r11           #  7     0x2f70d  3      OPC=72    
  jmpq %r11                 #  8     0x2f710  3      OPC=928   
  nop                       #  9     0x2f713  1      OPC=1343  
  nop                       #  10    0x2f714  1      OPC=1343  
  nop                       #  11    0x2f715  1      OPC=1343  
  nop                       #  12    0x2f716  1      OPC=1343  
  nop                       #  13    0x2f717  1      OPC=1343  
  nop                       #  14    0x2f718  1      OPC=1343  
  nop                       #  15    0x2f719  1      OPC=1343  
  nop                       #  16    0x2f71a  1      OPC=1343  
  nop                       #  17    0x2f71b  1      OPC=1343  
  nop                       #  18    0x2f71c  1      OPC=1343  
  nop                       #  19    0x2f71d  1      OPC=1343  
  nop                       #  20    0x2f71e  1      OPC=1343  
  nop                       #  21    0x2f71f  1      OPC=1343  
  nop                       #  22    0x2f720  1      OPC=1343  
  nop                       #  23    0x2f721  1      OPC=1343  
  nop                       #  24    0x2f722  1      OPC=1343  
  nop                       #  25    0x2f723  1      OPC=1343  
  nop                       #  26    0x2f724  1      OPC=1343  
  nop                       #  27    0x2f725  1      OPC=1343  
  nop                       #  28    0x2f726  1      OPC=1343  
                                                               
.size NACL_AnnotateTraceMemory, .-NACL_AnnotateTraceMemory


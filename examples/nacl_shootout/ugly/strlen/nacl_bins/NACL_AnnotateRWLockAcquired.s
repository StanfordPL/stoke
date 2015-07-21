  .text
  .globl NACL_AnnotateRWLockAcquired
  .type NACL_AnnotateRWLockAcquired, @function

#! file-offset 0x6f400
#! rip-offset  0x2f400
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateRWLockAcquired:  #        0x2f400  0      OPC=0     
  popq %r11                    #  1     0x2f400  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  2     0x2f402  7      OPC=131   
  nop                          #  3     0x2f409  1      OPC=1343  
  nop                          #  4     0x2f40a  1      OPC=1343  
  nop                          #  5     0x2f40b  1      OPC=1343  
  nop                          #  6     0x2f40c  1      OPC=1343  
  addq %r15, %r11              #  7     0x2f40d  3      OPC=72    
  jmpq %r11                    #  8     0x2f410  3      OPC=928   
  nop                          #  9     0x2f413  1      OPC=1343  
  nop                          #  10    0x2f414  1      OPC=1343  
  nop                          #  11    0x2f415  1      OPC=1343  
  nop                          #  12    0x2f416  1      OPC=1343  
  nop                          #  13    0x2f417  1      OPC=1343  
  nop                          #  14    0x2f418  1      OPC=1343  
  nop                          #  15    0x2f419  1      OPC=1343  
  nop                          #  16    0x2f41a  1      OPC=1343  
  nop                          #  17    0x2f41b  1      OPC=1343  
  nop                          #  18    0x2f41c  1      OPC=1343  
  nop                          #  19    0x2f41d  1      OPC=1343  
  nop                          #  20    0x2f41e  1      OPC=1343  
  nop                          #  21    0x2f41f  1      OPC=1343  
  nop                          #  22    0x2f420  1      OPC=1343  
  nop                          #  23    0x2f421  1      OPC=1343  
  nop                          #  24    0x2f422  1      OPC=1343  
  nop                          #  25    0x2f423  1      OPC=1343  
  nop                          #  26    0x2f424  1      OPC=1343  
  nop                          #  27    0x2f425  1      OPC=1343  
  nop                          #  28    0x2f426  1      OPC=1343  
                                                                  
.size NACL_AnnotateRWLockAcquired, .-NACL_AnnotateRWLockAcquired


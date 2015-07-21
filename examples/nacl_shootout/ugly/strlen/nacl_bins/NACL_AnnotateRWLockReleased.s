  .text
  .globl NACL_AnnotateRWLockReleased
  .type NACL_AnnotateRWLockReleased, @function

#! file-offset 0x6f420
#! rip-offset  0x2f420
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateRWLockReleased:  #        0x2f420  0      OPC=0     
  popq %r11                    #  1     0x2f420  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  2     0x2f422  7      OPC=131   
  nop                          #  3     0x2f429  1      OPC=1343  
  nop                          #  4     0x2f42a  1      OPC=1343  
  nop                          #  5     0x2f42b  1      OPC=1343  
  nop                          #  6     0x2f42c  1      OPC=1343  
  addq %r15, %r11              #  7     0x2f42d  3      OPC=72    
  jmpq %r11                    #  8     0x2f430  3      OPC=928   
  nop                          #  9     0x2f433  1      OPC=1343  
  nop                          #  10    0x2f434  1      OPC=1343  
  nop                          #  11    0x2f435  1      OPC=1343  
  nop                          #  12    0x2f436  1      OPC=1343  
  nop                          #  13    0x2f437  1      OPC=1343  
  nop                          #  14    0x2f438  1      OPC=1343  
  nop                          #  15    0x2f439  1      OPC=1343  
  nop                          #  16    0x2f43a  1      OPC=1343  
  nop                          #  17    0x2f43b  1      OPC=1343  
  nop                          #  18    0x2f43c  1      OPC=1343  
  nop                          #  19    0x2f43d  1      OPC=1343  
  nop                          #  20    0x2f43e  1      OPC=1343  
  nop                          #  21    0x2f43f  1      OPC=1343  
  nop                          #  22    0x2f440  1      OPC=1343  
  nop                          #  23    0x2f441  1      OPC=1343  
  nop                          #  24    0x2f442  1      OPC=1343  
  nop                          #  25    0x2f443  1      OPC=1343  
  nop                          #  26    0x2f444  1      OPC=1343  
  nop                          #  27    0x2f445  1      OPC=1343  
  nop                          #  28    0x2f446  1      OPC=1343  
                                                                  
.size NACL_AnnotateRWLockReleased, .-NACL_AnnotateRWLockReleased


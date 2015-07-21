  .text
  .globl NACL_AnnotateMutexIsUsedAsCondVar
  .type NACL_AnnotateMutexIsUsedAsCondVar, @function

#! file-offset 0x6f6c0
#! rip-offset  0x2f6c0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateMutexIsUsedAsCondVar:  #        0x2f6c0  0      OPC=0     
  popq %r11                          #  1     0x2f6c0  2      OPC=1694  
  andl $0xffffffe0, %r11d            #  2     0x2f6c2  7      OPC=131   
  nop                                #  3     0x2f6c9  1      OPC=1343  
  nop                                #  4     0x2f6ca  1      OPC=1343  
  nop                                #  5     0x2f6cb  1      OPC=1343  
  nop                                #  6     0x2f6cc  1      OPC=1343  
  addq %r15, %r11                    #  7     0x2f6cd  3      OPC=72    
  jmpq %r11                          #  8     0x2f6d0  3      OPC=928   
  nop                                #  9     0x2f6d3  1      OPC=1343  
  nop                                #  10    0x2f6d4  1      OPC=1343  
  nop                                #  11    0x2f6d5  1      OPC=1343  
  nop                                #  12    0x2f6d6  1      OPC=1343  
  nop                                #  13    0x2f6d7  1      OPC=1343  
  nop                                #  14    0x2f6d8  1      OPC=1343  
  nop                                #  15    0x2f6d9  1      OPC=1343  
  nop                                #  16    0x2f6da  1      OPC=1343  
  nop                                #  17    0x2f6db  1      OPC=1343  
  nop                                #  18    0x2f6dc  1      OPC=1343  
  nop                                #  19    0x2f6dd  1      OPC=1343  
  nop                                #  20    0x2f6de  1      OPC=1343  
  nop                                #  21    0x2f6df  1      OPC=1343  
  nop                                #  22    0x2f6e0  1      OPC=1343  
  nop                                #  23    0x2f6e1  1      OPC=1343  
  nop                                #  24    0x2f6e2  1      OPC=1343  
  nop                                #  25    0x2f6e3  1      OPC=1343  
  nop                                #  26    0x2f6e4  1      OPC=1343  
  nop                                #  27    0x2f6e5  1      OPC=1343  
  nop                                #  28    0x2f6e6  1      OPC=1343  
                                                                        
.size NACL_AnnotateMutexIsUsedAsCondVar, .-NACL_AnnotateMutexIsUsedAsCondVar


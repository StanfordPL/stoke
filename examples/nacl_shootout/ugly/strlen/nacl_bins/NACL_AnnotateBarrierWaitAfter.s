  .text
  .globl NACL_AnnotateBarrierWaitAfter
  .type NACL_AnnotateBarrierWaitAfter, @function

#! file-offset 0x6f480
#! rip-offset  0x2f480
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateBarrierWaitAfter:  #        0x2f480  0      OPC=0     
  popq %r11                      #  1     0x2f480  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  2     0x2f482  7      OPC=131   
  nop                            #  3     0x2f489  1      OPC=1343  
  nop                            #  4     0x2f48a  1      OPC=1343  
  nop                            #  5     0x2f48b  1      OPC=1343  
  nop                            #  6     0x2f48c  1      OPC=1343  
  addq %r15, %r11                #  7     0x2f48d  3      OPC=72    
  jmpq %r11                      #  8     0x2f490  3      OPC=928   
  nop                            #  9     0x2f493  1      OPC=1343  
  nop                            #  10    0x2f494  1      OPC=1343  
  nop                            #  11    0x2f495  1      OPC=1343  
  nop                            #  12    0x2f496  1      OPC=1343  
  nop                            #  13    0x2f497  1      OPC=1343  
  nop                            #  14    0x2f498  1      OPC=1343  
  nop                            #  15    0x2f499  1      OPC=1343  
  nop                            #  16    0x2f49a  1      OPC=1343  
  nop                            #  17    0x2f49b  1      OPC=1343  
  nop                            #  18    0x2f49c  1      OPC=1343  
  nop                            #  19    0x2f49d  1      OPC=1343  
  nop                            #  20    0x2f49e  1      OPC=1343  
  nop                            #  21    0x2f49f  1      OPC=1343  
  nop                            #  22    0x2f4a0  1      OPC=1343  
  nop                            #  23    0x2f4a1  1      OPC=1343  
  nop                            #  24    0x2f4a2  1      OPC=1343  
  nop                            #  25    0x2f4a3  1      OPC=1343  
  nop                            #  26    0x2f4a4  1      OPC=1343  
  nop                            #  27    0x2f4a5  1      OPC=1343  
  nop                            #  28    0x2f4a6  1      OPC=1343  
                                                                    
.size NACL_AnnotateBarrierWaitAfter, .-NACL_AnnotateBarrierWaitAfter


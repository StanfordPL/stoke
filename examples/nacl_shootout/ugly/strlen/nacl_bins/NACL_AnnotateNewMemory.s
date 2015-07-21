  .text
  .globl NACL_AnnotateNewMemory
  .type NACL_AnnotateNewMemory, @function

#! file-offset 0x6f620
#! rip-offset  0x2f620
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateNewMemory:   #        0x2f620  0      OPC=0     
  popq %r11                #  1     0x2f620  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  2     0x2f622  7      OPC=131   
  nop                      #  3     0x2f629  1      OPC=1343  
  nop                      #  4     0x2f62a  1      OPC=1343  
  nop                      #  5     0x2f62b  1      OPC=1343  
  nop                      #  6     0x2f62c  1      OPC=1343  
  addq %r15, %r11          #  7     0x2f62d  3      OPC=72    
  jmpq %r11                #  8     0x2f630  3      OPC=928   
  nop                      #  9     0x2f633  1      OPC=1343  
  nop                      #  10    0x2f634  1      OPC=1343  
  nop                      #  11    0x2f635  1      OPC=1343  
  nop                      #  12    0x2f636  1      OPC=1343  
  nop                      #  13    0x2f637  1      OPC=1343  
  nop                      #  14    0x2f638  1      OPC=1343  
  nop                      #  15    0x2f639  1      OPC=1343  
  nop                      #  16    0x2f63a  1      OPC=1343  
  nop                      #  17    0x2f63b  1      OPC=1343  
  nop                      #  18    0x2f63c  1      OPC=1343  
  nop                      #  19    0x2f63d  1      OPC=1343  
  nop                      #  20    0x2f63e  1      OPC=1343  
  nop                      #  21    0x2f63f  1      OPC=1343  
  nop                      #  22    0x2f640  1      OPC=1343  
  nop                      #  23    0x2f641  1      OPC=1343  
  nop                      #  24    0x2f642  1      OPC=1343  
  nop                      #  25    0x2f643  1      OPC=1343  
  nop                      #  26    0x2f644  1      OPC=1343  
  nop                      #  27    0x2f645  1      OPC=1343  
  nop                      #  28    0x2f646  1      OPC=1343  
                                                              
.size NACL_AnnotateNewMemory, .-NACL_AnnotateNewMemory


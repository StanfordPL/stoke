  .text
  .globl NACL_AnnotateNoOp
  .type NACL_AnnotateNoOp, @function

#! file-offset 0x6f820
#! rip-offset  0x2f820
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.NACL_AnnotateNoOp:        #        0x2f820  0      OPC=0     
  popq %r11                #  1     0x2f820  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  2     0x2f822  7      OPC=131   
  nop                      #  3     0x2f829  1      OPC=1343  
  nop                      #  4     0x2f82a  1      OPC=1343  
  nop                      #  5     0x2f82b  1      OPC=1343  
  nop                      #  6     0x2f82c  1      OPC=1343  
  addq %r15, %r11          #  7     0x2f82d  3      OPC=72    
  jmpq %r11                #  8     0x2f830  3      OPC=928   
  nop                      #  9     0x2f833  1      OPC=1343  
  nop                      #  10    0x2f834  1      OPC=1343  
  nop                      #  11    0x2f835  1      OPC=1343  
  nop                      #  12    0x2f836  1      OPC=1343  
  nop                      #  13    0x2f837  1      OPC=1343  
  nop                      #  14    0x2f838  1      OPC=1343  
  nop                      #  15    0x2f839  1      OPC=1343  
  nop                      #  16    0x2f83a  1      OPC=1343  
  nop                      #  17    0x2f83b  1      OPC=1343  
  nop                      #  18    0x2f83c  1      OPC=1343  
  nop                      #  19    0x2f83d  1      OPC=1343  
  nop                      #  20    0x2f83e  1      OPC=1343  
  nop                      #  21    0x2f83f  1      OPC=1343  
  nop                      #  22    0x2f840  1      OPC=1343  
  nop                      #  23    0x2f841  1      OPC=1343  
  nop                      #  24    0x2f842  1      OPC=1343  
  nop                      #  25    0x2f843  1      OPC=1343  
  nop                      #  26    0x2f844  1      OPC=1343  
  nop                      #  27    0x2f845  1      OPC=1343  
  nop                      #  28    0x2f846  1      OPC=1343  
                                                              
.size NACL_AnnotateNoOp, .-NACL_AnnotateNoOp


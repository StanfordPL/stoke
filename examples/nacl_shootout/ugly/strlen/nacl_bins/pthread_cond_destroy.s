  .text
  .globl pthread_cond_destroy
  .type pthread_cond_destroy, @function

#! file-offset 0x6f1e0
#! rip-offset  0x2f1e0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.pthread_cond_destroy:     #        0x2f1e0  0      OPC=0     
  popq %r11                #  1     0x2f1e0  2      OPC=1694  
  xorl %eax, %eax          #  2     0x2f1e2  2      OPC=3758  
  andl $0xffffffe0, %r11d  #  3     0x2f1e4  7      OPC=131   
  nop                      #  4     0x2f1eb  1      OPC=1343  
  nop                      #  5     0x2f1ec  1      OPC=1343  
  nop                      #  6     0x2f1ed  1      OPC=1343  
  nop                      #  7     0x2f1ee  1      OPC=1343  
  addq %r15, %r11          #  8     0x2f1ef  3      OPC=72    
  jmpq %r11                #  9     0x2f1f2  3      OPC=928   
  nop                      #  10    0x2f1f5  1      OPC=1343  
  nop                      #  11    0x2f1f6  1      OPC=1343  
  nop                      #  12    0x2f1f7  1      OPC=1343  
  nop                      #  13    0x2f1f8  1      OPC=1343  
  nop                      #  14    0x2f1f9  1      OPC=1343  
  nop                      #  15    0x2f1fa  1      OPC=1343  
  nop                      #  16    0x2f1fb  1      OPC=1343  
  nop                      #  17    0x2f1fc  1      OPC=1343  
  nop                      #  18    0x2f1fd  1      OPC=1343  
  nop                      #  19    0x2f1fe  1      OPC=1343  
  nop                      #  20    0x2f1ff  1      OPC=1343  
  nop                      #  21    0x2f200  1      OPC=1343  
  nop                      #  22    0x2f201  1      OPC=1343  
  nop                      #  23    0x2f202  1      OPC=1343  
  nop                      #  24    0x2f203  1      OPC=1343  
  nop                      #  25    0x2f204  1      OPC=1343  
  nop                      #  26    0x2f205  1      OPC=1343  
  nop                      #  27    0x2f206  1      OPC=1343  
                                                              
.size pthread_cond_destroy, .-pthread_cond_destroy


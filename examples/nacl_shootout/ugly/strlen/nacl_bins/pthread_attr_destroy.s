  .text
  .globl pthread_attr_destroy
  .type pthread_attr_destroy, @function

#! file-offset 0x6d2a0
#! rip-offset  0x2d2a0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.pthread_attr_destroy:     #        0x2d2a0  0      OPC=0     
  popq %r11                #  1     0x2d2a0  2      OPC=1694  
  movl %edi, %edi          #  2     0x2d2a2  2      OPC=1157  
  cmpq $0x1, %rdi          #  3     0x2d2a4  4      OPC=475   
  sbbl %eax, %eax          #  4     0x2d2a8  2      OPC=2134  
  andl $0x16, %eax         #  5     0x2d2aa  3      OPC=132   
  andl $0xffffffe0, %r11d  #  6     0x2d2ad  7      OPC=131   
  nop                      #  7     0x2d2b4  1      OPC=1343  
  nop                      #  8     0x2d2b5  1      OPC=1343  
  nop                      #  9     0x2d2b6  1      OPC=1343  
  nop                      #  10    0x2d2b7  1      OPC=1343  
  addq %r15, %r11          #  11    0x2d2b8  3      OPC=72    
  jmpq %r11                #  12    0x2d2bb  3      OPC=928   
  nop                      #  13    0x2d2be  1      OPC=1343  
  nop                      #  14    0x2d2bf  1      OPC=1343  
  nop                      #  15    0x2d2c0  1      OPC=1343  
  nop                      #  16    0x2d2c1  1      OPC=1343  
  nop                      #  17    0x2d2c2  1      OPC=1343  
  nop                      #  18    0x2d2c3  1      OPC=1343  
  nop                      #  19    0x2d2c4  1      OPC=1343  
  nop                      #  20    0x2d2c5  1      OPC=1343  
  nop                      #  21    0x2d2c6  1      OPC=1343  
                                                              
.size pthread_attr_destroy, .-pthread_attr_destroy


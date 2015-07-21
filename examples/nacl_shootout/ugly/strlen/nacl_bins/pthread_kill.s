  .text
  .globl pthread_kill
  .type pthread_kill, @function

#! file-offset 0x6d200
#! rip-offset  0x2d200
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.pthread_kill:             #        0x2d200  0      OPC=0     
  popq %r11                #  1     0x2d200  2      OPC=1694  
  movl $0x26, %eax         #  2     0x2d202  5      OPC=1154  
  andl $0xffffffe0, %r11d  #  3     0x2d207  7      OPC=131   
  nop                      #  4     0x2d20e  1      OPC=1343  
  nop                      #  5     0x2d20f  1      OPC=1343  
  nop                      #  6     0x2d210  1      OPC=1343  
  nop                      #  7     0x2d211  1      OPC=1343  
  addq %r15, %r11          #  8     0x2d212  3      OPC=72    
  jmpq %r11                #  9     0x2d215  3      OPC=928   
  nop                      #  10    0x2d218  1      OPC=1343  
  nop                      #  11    0x2d219  1      OPC=1343  
  nop                      #  12    0x2d21a  1      OPC=1343  
  nop                      #  13    0x2d21b  1      OPC=1343  
  nop                      #  14    0x2d21c  1      OPC=1343  
  nop                      #  15    0x2d21d  1      OPC=1343  
  nop                      #  16    0x2d21e  1      OPC=1343  
  nop                      #  17    0x2d21f  1      OPC=1343  
  nop                      #  18    0x2d220  1      OPC=1343  
  nop                      #  19    0x2d221  1      OPC=1343  
  nop                      #  20    0x2d222  1      OPC=1343  
  nop                      #  21    0x2d223  1      OPC=1343  
  nop                      #  22    0x2d224  1      OPC=1343  
  nop                      #  23    0x2d225  1      OPC=1343  
  nop                      #  24    0x2d226  1      OPC=1343  
                                                              
.size pthread_kill, .-pthread_kill


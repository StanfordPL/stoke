  .text
  .globl pthread_equal
  .type pthread_equal, @function

#! file-offset 0x6d220
#! rip-offset  0x2d220
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode    
.pthread_equal:            #        0x2d220  0      OPC=0     
  popq %r11                #  1     0x2d220  2      OPC=1694  
  xorl %eax, %eax          #  2     0x2d222  2      OPC=3758  
  cmpl %edi, %esi          #  3     0x2d224  2      OPC=472   
  sete %al                 #  4     0x2d226  3      OPC=2178  
  andl $0xffffffe0, %r11d  #  5     0x2d229  7      OPC=131   
  nop                      #  6     0x2d230  1      OPC=1343  
  nop                      #  7     0x2d231  1      OPC=1343  
  nop                      #  8     0x2d232  1      OPC=1343  
  nop                      #  9     0x2d233  1      OPC=1343  
  addq %r15, %r11          #  10    0x2d234  3      OPC=72    
  jmpq %r11                #  11    0x2d237  3      OPC=928   
  nop                      #  12    0x2d23a  1      OPC=1343  
  nop                      #  13    0x2d23b  1      OPC=1343  
  nop                      #  14    0x2d23c  1      OPC=1343  
  nop                      #  15    0x2d23d  1      OPC=1343  
  nop                      #  16    0x2d23e  1      OPC=1343  
  nop                      #  17    0x2d23f  1      OPC=1343  
  nop                      #  18    0x2d240  1      OPC=1343  
  nop                      #  19    0x2d241  1      OPC=1343  
  nop                      #  20    0x2d242  1      OPC=1343  
  nop                      #  21    0x2d243  1      OPC=1343  
  nop                      #  22    0x2d244  1      OPC=1343  
  nop                      #  23    0x2d245  1      OPC=1343  
  nop                      #  24    0x2d246  1      OPC=1343  
                                                              
.size pthread_equal, .-pthread_equal


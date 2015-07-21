  .text
  .globl pthread_attr_setdetachstate
  .type pthread_attr_setdetachstate, @function

#! file-offset 0x6d2c0
#! rip-offset  0x2d2c0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.pthread_attr_setdetachstate:  #        0x2d2c0  0      OPC=0     
  movl %edi, %edi              #  1     0x2d2c0  2      OPC=1157  
  movl $0x16, %eax             #  2     0x2d2c2  5      OPC=1154  
  testq %rdi, %rdi             #  3     0x2d2c7  3      OPC=2438  
  je .L_2d2e0                  #  4     0x2d2ca  6      OPC=893   
  nop                          #  5     0x2d2d0  1      OPC=1343  
  nop                          #  6     0x2d2d1  1      OPC=1343  
  movl %edi, %edi              #  7     0x2d2d2  2      OPC=1157  
  movl %esi, (%r15,%rdi,1)     #  8     0x2d2d4  4      OPC=1136  
  xorb %al, %al                #  9     0x2d2d8  2      OPC=3767  
  nop                          #  10    0x2d2da  1      OPC=1343  
  nop                          #  11    0x2d2db  1      OPC=1343  
  nop                          #  12    0x2d2dc  1      OPC=1343  
  nop                          #  13    0x2d2dd  1      OPC=1343  
  nop                          #  14    0x2d2de  1      OPC=1343  
  nop                          #  15    0x2d2df  1      OPC=1343  
  nop                          #  16    0x2d2e0  1      OPC=1343  
  nop                          #  17    0x2d2e1  1      OPC=1343  
  nop                          #  18    0x2d2e2  1      OPC=1343  
  nop                          #  19    0x2d2e3  1      OPC=1343  
  nop                          #  20    0x2d2e4  1      OPC=1343  
  nop                          #  21    0x2d2e5  1      OPC=1343  
.L_2d2e0:                      #        0x2d2e6  0      OPC=0     
  popq %r11                    #  22    0x2d2e6  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  23    0x2d2e8  7      OPC=131   
  nop                          #  24    0x2d2ef  1      OPC=1343  
  nop                          #  25    0x2d2f0  1      OPC=1343  
  nop                          #  26    0x2d2f1  1      OPC=1343  
  nop                          #  27    0x2d2f2  1      OPC=1343  
  addq %r15, %r11              #  28    0x2d2f3  3      OPC=72    
  jmpq %r11                    #  29    0x2d2f6  3      OPC=928   
  nop                          #  30    0x2d2f9  1      OPC=1343  
  nop                          #  31    0x2d2fa  1      OPC=1343  
  nop                          #  32    0x2d2fb  1      OPC=1343  
  nop                          #  33    0x2d2fc  1      OPC=1343  
  nop                          #  34    0x2d2fd  1      OPC=1343  
  nop                          #  35    0x2d2fe  1      OPC=1343  
  nop                          #  36    0x2d2ff  1      OPC=1343  
  nop                          #  37    0x2d300  1      OPC=1343  
  nop                          #  38    0x2d301  1      OPC=1343  
  nop                          #  39    0x2d302  1      OPC=1343  
  nop                          #  40    0x2d303  1      OPC=1343  
  nop                          #  41    0x2d304  1      OPC=1343  
  nop                          #  42    0x2d305  1      OPC=1343  
  nop                          #  43    0x2d306  1      OPC=1343  
  nop                          #  44    0x2d307  1      OPC=1343  
  nop                          #  45    0x2d308  1      OPC=1343  
  nop                          #  46    0x2d309  1      OPC=1343  
  nop                          #  47    0x2d30a  1      OPC=1343  
  nop                          #  48    0x2d30b  1      OPC=1343  
  nop                          #  49    0x2d30c  1      OPC=1343  
                                                                  
.size pthread_attr_setdetachstate, .-pthread_attr_setdetachstate


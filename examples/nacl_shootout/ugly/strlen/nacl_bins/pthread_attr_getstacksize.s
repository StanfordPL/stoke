  .text
  .globl pthread_attr_getstacksize
  .type pthread_attr_getstacksize, @function

#! file-offset 0x6d420
#! rip-offset  0x2d420
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.pthread_attr_getstacksize:    #        0x2d420  0      OPC=0     
  movl %edi, %edi              #  1     0x2d420  2      OPC=1157  
  movl %esi, %esi              #  2     0x2d422  2      OPC=1157  
  movl $0x16, %eax             #  3     0x2d424  5      OPC=1154  
  testq %rdi, %rdi             #  4     0x2d429  3      OPC=2438  
  je .L_2d440                  #  5     0x2d42c  6      OPC=893   
  nop                          #  6     0x2d432  1      OPC=1343  
  nop                          #  7     0x2d433  1      OPC=1343  
  movl %edi, %edi              #  8     0x2d434  2      OPC=1157  
  movl 0x4(%r15,%rdi,1), %eax  #  9     0x2d436  5      OPC=1156  
  movl %esi, %esi              #  10    0x2d43b  2      OPC=1157  
  movl %eax, (%r15,%rsi,1)     #  11    0x2d43d  4      OPC=1136  
  xorl %eax, %eax              #  12    0x2d441  2      OPC=3758  
  nop                          #  13    0x2d443  1      OPC=1343  
  nop                          #  14    0x2d444  1      OPC=1343  
  nop                          #  15    0x2d445  1      OPC=1343  
.L_2d440:                      #        0x2d446  0      OPC=0     
  popq %r11                    #  16    0x2d446  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  17    0x2d448  7      OPC=131   
  nop                          #  18    0x2d44f  1      OPC=1343  
  nop                          #  19    0x2d450  1      OPC=1343  
  nop                          #  20    0x2d451  1      OPC=1343  
  nop                          #  21    0x2d452  1      OPC=1343  
  addq %r15, %r11              #  22    0x2d453  3      OPC=72    
  jmpq %r11                    #  23    0x2d456  3      OPC=928   
  nop                          #  24    0x2d459  1      OPC=1343  
  nop                          #  25    0x2d45a  1      OPC=1343  
  nop                          #  26    0x2d45b  1      OPC=1343  
  nop                          #  27    0x2d45c  1      OPC=1343  
  nop                          #  28    0x2d45d  1      OPC=1343  
  nop                          #  29    0x2d45e  1      OPC=1343  
  nop                          #  30    0x2d45f  1      OPC=1343  
  nop                          #  31    0x2d460  1      OPC=1343  
  nop                          #  32    0x2d461  1      OPC=1343  
  nop                          #  33    0x2d462  1      OPC=1343  
  nop                          #  34    0x2d463  1      OPC=1343  
  nop                          #  35    0x2d464  1      OPC=1343  
  nop                          #  36    0x2d465  1      OPC=1343  
  nop                          #  37    0x2d466  1      OPC=1343  
  nop                          #  38    0x2d467  1      OPC=1343  
  nop                          #  39    0x2d468  1      OPC=1343  
  nop                          #  40    0x2d469  1      OPC=1343  
  nop                          #  41    0x2d46a  1      OPC=1343  
  nop                          #  42    0x2d46b  1      OPC=1343  
  nop                          #  43    0x2d46c  1      OPC=1343  
                                                                  
.size pthread_attr_getstacksize, .-pthread_attr_getstacksize


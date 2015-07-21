  .text
  .globl pthread_attr_getdetachstate
  .type pthread_attr_getdetachstate, @function

#! file-offset 0x6d300
#! rip-offset  0x2d300
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.pthread_attr_getdetachstate:  #        0x2d300  0      OPC=0     
  movl %edi, %edi              #  1     0x2d300  2      OPC=1157  
  movl $0x16, %eax             #  2     0x2d302  5      OPC=1154  
  testq %rdi, %rdi             #  3     0x2d307  3      OPC=2438  
  je .L_2d320                  #  4     0x2d30a  6      OPC=893   
  nop                          #  5     0x2d310  1      OPC=1343  
  nop                          #  6     0x2d311  1      OPC=1343  
  movl %edi, %edi              #  7     0x2d312  2      OPC=1157  
  movl (%r15,%rdi,1), %eax     #  8     0x2d314  4      OPC=1156  
  nop                          #  9     0x2d318  1      OPC=1343  
  nop                          #  10    0x2d319  1      OPC=1343  
  nop                          #  11    0x2d31a  1      OPC=1343  
  nop                          #  12    0x2d31b  1      OPC=1343  
  nop                          #  13    0x2d31c  1      OPC=1343  
  nop                          #  14    0x2d31d  1      OPC=1343  
  nop                          #  15    0x2d31e  1      OPC=1343  
  nop                          #  16    0x2d31f  1      OPC=1343  
  nop                          #  17    0x2d320  1      OPC=1343  
  nop                          #  18    0x2d321  1      OPC=1343  
  nop                          #  19    0x2d322  1      OPC=1343  
  nop                          #  20    0x2d323  1      OPC=1343  
  nop                          #  21    0x2d324  1      OPC=1343  
  nop                          #  22    0x2d325  1      OPC=1343  
.L_2d320:                      #        0x2d326  0      OPC=0     
  popq %r11                    #  23    0x2d326  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  24    0x2d328  7      OPC=131   
  nop                          #  25    0x2d32f  1      OPC=1343  
  nop                          #  26    0x2d330  1      OPC=1343  
  nop                          #  27    0x2d331  1      OPC=1343  
  nop                          #  28    0x2d332  1      OPC=1343  
  addq %r15, %r11              #  29    0x2d333  3      OPC=72    
  jmpq %r11                    #  30    0x2d336  3      OPC=928   
  nop                          #  31    0x2d339  1      OPC=1343  
  nop                          #  32    0x2d33a  1      OPC=1343  
  nop                          #  33    0x2d33b  1      OPC=1343  
  nop                          #  34    0x2d33c  1      OPC=1343  
  nop                          #  35    0x2d33d  1      OPC=1343  
  nop                          #  36    0x2d33e  1      OPC=1343  
  nop                          #  37    0x2d33f  1      OPC=1343  
  nop                          #  38    0x2d340  1      OPC=1343  
  nop                          #  39    0x2d341  1      OPC=1343  
  nop                          #  40    0x2d342  1      OPC=1343  
  nop                          #  41    0x2d343  1      OPC=1343  
  nop                          #  42    0x2d344  1      OPC=1343  
  nop                          #  43    0x2d345  1      OPC=1343  
  nop                          #  44    0x2d346  1      OPC=1343  
  nop                          #  45    0x2d347  1      OPC=1343  
  nop                          #  46    0x2d348  1      OPC=1343  
  nop                          #  47    0x2d349  1      OPC=1343  
  nop                          #  48    0x2d34a  1      OPC=1343  
  nop                          #  49    0x2d34b  1      OPC=1343  
  nop                          #  50    0x2d34c  1      OPC=1343  
                                                                  
.size pthread_attr_getdetachstate, .-pthread_attr_getdetachstate


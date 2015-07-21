  .text
  .globl pthread_attr_setstacksize
  .type pthread_attr_setstacksize, @function

#! file-offset 0x6d3a0
#! rip-offset  0x2d3a0
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
.pthread_attr_setstacksize:      #        0x2d3a0  0      OPC=0     
  movl %edi, %edi                #  1     0x2d3a0  2      OPC=1157  
  movl $0x16, %eax               #  2     0x2d3a2  5      OPC=1154  
  testq %rdi, %rdi               #  3     0x2d3a7  3      OPC=2438  
  je .L_2d3e0                    #  4     0x2d3aa  6      OPC=893   
  nop                            #  5     0x2d3b0  1      OPC=1343  
  nop                            #  6     0x2d3b1  1      OPC=1343  
  cmpl $0x400, %esi              #  7     0x2d3b2  6      OPC=469   
  ja .L_2d400                    #  8     0x2d3b8  6      OPC=863   
  nop                            #  9     0x2d3be  1      OPC=1343  
  nop                            #  10    0x2d3bf  1      OPC=1343  
  movl %edi, %edi                #  11    0x2d3c0  2      OPC=1157  
  movl $0x400, 0x4(%r15,%rdi,1)  #  12    0x2d3c2  9      OPC=1135  
  nop                            #  13    0x2d3cb  1      OPC=1343  
  xorl %eax, %eax                #  14    0x2d3cc  2      OPC=3758  
  nop                            #  15    0x2d3ce  1      OPC=1343  
  nop                            #  16    0x2d3cf  1      OPC=1343  
  nop                            #  17    0x2d3d0  1      OPC=1343  
  nop                            #  18    0x2d3d1  1      OPC=1343  
  nop                            #  19    0x2d3d2  1      OPC=1343  
  nop                            #  20    0x2d3d3  1      OPC=1343  
  nop                            #  21    0x2d3d4  1      OPC=1343  
  nop                            #  22    0x2d3d5  1      OPC=1343  
  nop                            #  23    0x2d3d6  1      OPC=1343  
  nop                            #  24    0x2d3d7  1      OPC=1343  
  nop                            #  25    0x2d3d8  1      OPC=1343  
  nop                            #  26    0x2d3d9  1      OPC=1343  
  nop                            #  27    0x2d3da  1      OPC=1343  
  nop                            #  28    0x2d3db  1      OPC=1343  
  nop                            #  29    0x2d3dc  1      OPC=1343  
  nop                            #  30    0x2d3dd  1      OPC=1343  
  nop                            #  31    0x2d3de  1      OPC=1343  
  nop                            #  32    0x2d3df  1      OPC=1343  
  nop                            #  33    0x2d3e0  1      OPC=1343  
  nop                            #  34    0x2d3e1  1      OPC=1343  
  nop                            #  35    0x2d3e2  1      OPC=1343  
  nop                            #  36    0x2d3e3  1      OPC=1343  
  nop                            #  37    0x2d3e4  1      OPC=1343  
  nop                            #  38    0x2d3e5  1      OPC=1343  
  nop                            #  39    0x2d3e6  1      OPC=1343  
  nop                            #  40    0x2d3e7  1      OPC=1343  
  nop                            #  41    0x2d3e8  1      OPC=1343  
  nop                            #  42    0x2d3e9  1      OPC=1343  
  nop                            #  43    0x2d3ea  1      OPC=1343  
  nop                            #  44    0x2d3eb  1      OPC=1343  
.L_2d3e0:                        #        0x2d3ec  0      OPC=0     
  popq %r11                      #  45    0x2d3ec  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  46    0x2d3ee  7      OPC=131   
  nop                            #  47    0x2d3f5  1      OPC=1343  
  nop                            #  48    0x2d3f6  1      OPC=1343  
  nop                            #  49    0x2d3f7  1      OPC=1343  
  nop                            #  50    0x2d3f8  1      OPC=1343  
  addq %r15, %r11                #  51    0x2d3f9  3      OPC=72    
  jmpq %r11                      #  52    0x2d3fc  3      OPC=928   
  nop                            #  53    0x2d3ff  1      OPC=1343  
  nop                            #  54    0x2d400  1      OPC=1343  
  nop                            #  55    0x2d401  1      OPC=1343  
  nop                            #  56    0x2d402  1      OPC=1343  
  nop                            #  57    0x2d403  1      OPC=1343  
  nop                            #  58    0x2d404  1      OPC=1343  
  nop                            #  59    0x2d405  1      OPC=1343  
  nop                            #  60    0x2d406  1      OPC=1343  
  nop                            #  61    0x2d407  1      OPC=1343  
  nop                            #  62    0x2d408  1      OPC=1343  
  nop                            #  63    0x2d409  1      OPC=1343  
  nop                            #  64    0x2d40a  1      OPC=1343  
  nop                            #  65    0x2d40b  1      OPC=1343  
  nop                            #  66    0x2d40c  1      OPC=1343  
  nop                            #  67    0x2d40d  1      OPC=1343  
  nop                            #  68    0x2d40e  1      OPC=1343  
  nop                            #  69    0x2d40f  1      OPC=1343  
  nop                            #  70    0x2d410  1      OPC=1343  
  nop                            #  71    0x2d411  1      OPC=1343  
  nop                            #  72    0x2d412  1      OPC=1343  
.L_2d400:                        #        0x2d413  0      OPC=0     
  movl %edi, %edi                #  73    0x2d413  2      OPC=1157  
  movl %esi, 0x4(%r15,%rdi,1)    #  74    0x2d415  5      OPC=1136  
  xorb %al, %al                  #  75    0x2d41a  2      OPC=3767  
  popq %r11                      #  76    0x2d41c  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  77    0x2d41e  7      OPC=131   
  nop                            #  78    0x2d425  1      OPC=1343  
  nop                            #  79    0x2d426  1      OPC=1343  
  nop                            #  80    0x2d427  1      OPC=1343  
  nop                            #  81    0x2d428  1      OPC=1343  
  addq %r15, %r11                #  82    0x2d429  3      OPC=72    
  jmpq %r11                      #  83    0x2d42c  3      OPC=928   
  nop                            #  84    0x2d42f  1      OPC=1343  
  nop                            #  85    0x2d430  1      OPC=1343  
  nop                            #  86    0x2d431  1      OPC=1343  
  nop                            #  87    0x2d432  1      OPC=1343  
  nop                            #  88    0x2d433  1      OPC=1343  
  nop                            #  89    0x2d434  1      OPC=1343  
  nop                            #  90    0x2d435  1      OPC=1343  
  nop                            #  91    0x2d436  1      OPC=1343  
  nop                            #  92    0x2d437  1      OPC=1343  
  nop                            #  93    0x2d438  1      OPC=1343  
  nop                            #  94    0x2d439  1      OPC=1343  
                                                                    
.size pthread_attr_setstacksize, .-pthread_attr_setstacksize


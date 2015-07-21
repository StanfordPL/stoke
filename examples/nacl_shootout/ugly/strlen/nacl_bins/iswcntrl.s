  .text
  .globl iswcntrl
  .type iswcntrl, @function

#! file-offset 0x189120
#! rip-offset  0x149120
#! capacity    160 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswcntrl:                 #        0x149120  0      OPC=0     
  subl $0x8, %esp          #  1     0x149120  3      OPC=2384  
  addq %r15, %rsp          #  2     0x149123  3      OPC=72    
  nop                      #  3     0x149126  1      OPC=1343  
  nop                      #  4     0x149127  1      OPC=1343  
  nop                      #  5     0x149128  1      OPC=1343  
  nop                      #  6     0x149129  1      OPC=1343  
  nop                      #  7     0x14912a  1      OPC=1343  
  nop                      #  8     0x14912b  1      OPC=1343  
  nop                      #  9     0x14912c  1      OPC=1343  
  nop                      #  10    0x14912d  1      OPC=1343  
  nop                      #  11    0x14912e  1      OPC=1343  
  nop                      #  12    0x14912f  1      OPC=1343  
  nop                      #  13    0x149130  1      OPC=1343  
  nop                      #  14    0x149131  1      OPC=1343  
  nop                      #  15    0x149132  1      OPC=1343  
  nop                      #  16    0x149133  1      OPC=1343  
  nop                      #  17    0x149134  1      OPC=1343  
  nop                      #  18    0x149135  1      OPC=1343  
  nop                      #  19    0x149136  1      OPC=1343  
  nop                      #  20    0x149137  1      OPC=1343  
  nop                      #  21    0x149138  1      OPC=1343  
  nop                      #  22    0x149139  1      OPC=1343  
  nop                      #  23    0x14913a  1      OPC=1343  
  callq ._jp2uc            #  24    0x14913b  5      OPC=260   
  leal -0x7f(%rax), %edx   #  25    0x149140  3      OPC=1066  
  cmpl $0x20, %edx         #  26    0x149143  3      OPC=470   
  ja .L_149180             #  27    0x149146  6      OPC=863   
  nop                      #  28    0x14914c  1      OPC=1343  
  nop                      #  29    0x14914d  1      OPC=1343  
  nop                      #  30    0x14914e  1      OPC=1343  
  nop                      #  31    0x14914f  1      OPC=1343  
  nop                      #  32    0x149150  1      OPC=1343  
  nop                      #  33    0x149151  1      OPC=1343  
  nop                      #  34    0x149152  1      OPC=1343  
  nop                      #  35    0x149153  1      OPC=1343  
  nop                      #  36    0x149154  1      OPC=1343  
  nop                      #  37    0x149155  1      OPC=1343  
  nop                      #  38    0x149156  1      OPC=1343  
  nop                      #  39    0x149157  1      OPC=1343  
  nop                      #  40    0x149158  1      OPC=1343  
  nop                      #  41    0x149159  1      OPC=1343  
  nop                      #  42    0x14915a  1      OPC=1343  
  nop                      #  43    0x14915b  1      OPC=1343  
  nop                      #  44    0x14915c  1      OPC=1343  
  nop                      #  45    0x14915d  1      OPC=1343  
  nop                      #  46    0x14915e  1      OPC=1343  
  nop                      #  47    0x14915f  1      OPC=1343  
  nop                      #  48    0x149160  1      OPC=1343  
  nop                      #  49    0x149161  1      OPC=1343  
  nop                      #  50    0x149162  1      OPC=1343  
  nop                      #  51    0x149163  1      OPC=1343  
  nop                      #  52    0x149164  1      OPC=1343  
  nop                      #  53    0x149165  1      OPC=1343  
.L_149160:                 #        0x149166  0      OPC=0     
  addl $0x8, %esp          #  54    0x149166  3      OPC=65    
  addq %r15, %rsp          #  55    0x149169  3      OPC=72    
  movl $0x1, %eax          #  56    0x14916c  5      OPC=1154  
  popq %r11                #  57    0x149171  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  58    0x149173  7      OPC=131   
  nop                      #  59    0x14917a  1      OPC=1343  
  nop                      #  60    0x14917b  1      OPC=1343  
  nop                      #  61    0x14917c  1      OPC=1343  
  nop                      #  62    0x14917d  1      OPC=1343  
  addq %r15, %r11          #  63    0x14917e  3      OPC=72    
  jmpq %r11                #  64    0x149181  3      OPC=928   
  nop                      #  65    0x149184  1      OPC=1343  
  nop                      #  66    0x149185  1      OPC=1343  
  nop                      #  67    0x149186  1      OPC=1343  
  nop                      #  68    0x149187  1      OPC=1343  
  nop                      #  69    0x149188  1      OPC=1343  
  nop                      #  70    0x149189  1      OPC=1343  
  nop                      #  71    0x14918a  1      OPC=1343  
  nop                      #  72    0x14918b  1      OPC=1343  
  nop                      #  73    0x14918c  1      OPC=1343  
.L_149180:                 #        0x14918d  0      OPC=0     
  cmpl $0x1f, %eax         #  74    0x14918d  3      OPC=470   
  jbe .L_149160            #  75    0x149190  6      OPC=881   
  nop                      #  76    0x149196  1      OPC=1343  
  nop                      #  77    0x149197  1      OPC=1343  
  cmpl $0x2029, %eax       #  78    0x149198  5      OPC=451   
  sete %dl                 #  79    0x14919d  3      OPC=2178  
  cmpl $0x2028, %eax       #  80    0x1491a0  5      OPC=451   
  sete %al                 #  81    0x1491a5  3      OPC=2178  
  addl $0x8, %esp          #  82    0x1491a8  3      OPC=65    
  addq %r15, %rsp          #  83    0x1491ab  3      OPC=72    
  popq %r11                #  84    0x1491ae  2      OPC=1694  
  orl %eax, %edx           #  85    0x1491b0  2      OPC=1380  
  nop                      #  86    0x1491b2  1      OPC=1343  
  movzbl %dl, %eax         #  87    0x1491b3  3      OPC=1304  
  andl $0xffffffe0, %r11d  #  88    0x1491b6  7      OPC=131   
  nop                      #  89    0x1491bd  1      OPC=1343  
  nop                      #  90    0x1491be  1      OPC=1343  
  nop                      #  91    0x1491bf  1      OPC=1343  
  nop                      #  92    0x1491c0  1      OPC=1343  
  addq %r15, %r11          #  93    0x1491c1  3      OPC=72    
  jmpq %r11                #  94    0x1491c4  3      OPC=928   
  nop                      #  95    0x1491c7  1      OPC=1343  
  nop                      #  96    0x1491c8  1      OPC=1343  
  nop                      #  97    0x1491c9  1      OPC=1343  
  nop                      #  98    0x1491ca  1      OPC=1343  
  nop                      #  99    0x1491cb  1      OPC=1343  
  nop                      #  100   0x1491cc  1      OPC=1343  
  nop                      #  101   0x1491cd  1      OPC=1343  
  nop                      #  102   0x1491ce  1      OPC=1343  
  nop                      #  103   0x1491cf  1      OPC=1343  
  nop                      #  104   0x1491d0  1      OPC=1343  
  nop                      #  105   0x1491d1  1      OPC=1343  
  nop                      #  106   0x1491d2  1      OPC=1343  
  nop                      #  107   0x1491d3  1      OPC=1343  
  nop                      #  108   0x1491d4  1      OPC=1343  
  nop                      #  109   0x1491d5  1      OPC=1343  
  nop                      #  110   0x1491d6  1      OPC=1343  
  nop                      #  111   0x1491d7  1      OPC=1343  
  nop                      #  112   0x1491d8  1      OPC=1343  
  nop                      #  113   0x1491d9  1      OPC=1343  
                                                               
.size iswcntrl, .-iswcntrl


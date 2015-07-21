  .text
  .globl run_knucleotide
  .type run_knucleotide, @function

#! file-offset 0x643a0
#! rip-offset  0x243a0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.run_knucleotide:              #        0x243a0  0      OPC=0     
  subl $0x8, %esp              #  1     0x243a0  3      OPC=2384  
  addq %r15, %rsp              #  2     0x243a3  3      OPC=72    
  movl $0x1003ce57, %edx       #  3     0x243a6  5      OPC=1154  
  movl 0x10054ddf(%rip), %esi  #  4     0x243ab  6      OPC=1156  
  movl 0x1004cd31(%rip), %edi  #  5     0x243b1  6      OPC=1156  
  nop                          #  6     0x243b7  1      OPC=1343  
  nop                          #  7     0x243b8  1      OPC=1343  
  nop                          #  8     0x243b9  1      OPC=1343  
  nop                          #  9     0x243ba  1      OPC=1343  
  callq .stringfile_open       #  10    0x243bb  5      OPC=260   
  movl %eax, %edx              #  11    0x243c0  2      OPC=1157  
  movl %edx, 0x1004d05c(%rip)  #  12    0x243c2  6      OPC=1136  
  movl $0xffffffff, %eax       #  13    0x243c8  6      OPC=1155  
  testq %rdx, %rdx             #  14    0x243ce  3      OPC=2438  
  je .L_24420                  #  15    0x243d1  6      OPC=893   
  nop                          #  16    0x243d7  1      OPC=1343  
  nop                          #  17    0x243d8  1      OPC=1343  
  nop                          #  18    0x243d9  1      OPC=1343  
  nop                          #  19    0x243da  1      OPC=1343  
  nop                          #  20    0x243db  1      OPC=1343  
  nop                          #  21    0x243dc  1      OPC=1343  
  nop                          #  22    0x243dd  1      OPC=1343  
  nop                          #  23    0x243de  1      OPC=1343  
  nop                          #  24    0x243df  1      OPC=1343  
  nop                          #  25    0x243e0  1      OPC=1343  
  nop                          #  26    0x243e1  1      OPC=1343  
  callq .knucleotide_main      #  27    0x243e2  5      OPC=260   
  movl 0x1004d03e(%rip), %edi  #  28    0x243e7  6      OPC=1156  
  nop                          #  29    0x243ed  1      OPC=1343  
  nop                          #  30    0x243ee  1      OPC=1343  
  nop                          #  31    0x243ef  1      OPC=1343  
  nop                          #  32    0x243f0  1      OPC=1343  
  nop                          #  33    0x243f1  1      OPC=1343  
  nop                          #  34    0x243f2  1      OPC=1343  
  nop                          #  35    0x243f3  1      OPC=1343  
  nop                          #  36    0x243f4  1      OPC=1343  
  nop                          #  37    0x243f5  1      OPC=1343  
  nop                          #  38    0x243f6  1      OPC=1343  
  nop                          #  39    0x243f7  1      OPC=1343  
  nop                          #  40    0x243f8  1      OPC=1343  
  nop                          #  41    0x243f9  1      OPC=1343  
  nop                          #  42    0x243fa  1      OPC=1343  
  nop                          #  43    0x243fb  1      OPC=1343  
  nop                          #  44    0x243fc  1      OPC=1343  
  nop                          #  45    0x243fd  1      OPC=1343  
  nop                          #  46    0x243fe  1      OPC=1343  
  nop                          #  47    0x243ff  1      OPC=1343  
  nop                          #  48    0x24400  1      OPC=1343  
  nop                          #  49    0x24401  1      OPC=1343  
  callq .stringfile_close      #  50    0x24402  5      OPC=260   
  xorl %eax, %eax              #  51    0x24407  2      OPC=3758  
  nop                          #  52    0x24409  1      OPC=1343  
  nop                          #  53    0x2440a  1      OPC=1343  
  nop                          #  54    0x2440b  1      OPC=1343  
  nop                          #  55    0x2440c  1      OPC=1343  
  nop                          #  56    0x2440d  1      OPC=1343  
  nop                          #  57    0x2440e  1      OPC=1343  
  nop                          #  58    0x2440f  1      OPC=1343  
  nop                          #  59    0x24410  1      OPC=1343  
  nop                          #  60    0x24411  1      OPC=1343  
  nop                          #  61    0x24412  1      OPC=1343  
  nop                          #  62    0x24413  1      OPC=1343  
  nop                          #  63    0x24414  1      OPC=1343  
  nop                          #  64    0x24415  1      OPC=1343  
  nop                          #  65    0x24416  1      OPC=1343  
  nop                          #  66    0x24417  1      OPC=1343  
  nop                          #  67    0x24418  1      OPC=1343  
  nop                          #  68    0x24419  1      OPC=1343  
  nop                          #  69    0x2441a  1      OPC=1343  
  nop                          #  70    0x2441b  1      OPC=1343  
  nop                          #  71    0x2441c  1      OPC=1343  
  nop                          #  72    0x2441d  1      OPC=1343  
  nop                          #  73    0x2441e  1      OPC=1343  
  nop                          #  74    0x2441f  1      OPC=1343  
  nop                          #  75    0x24420  1      OPC=1343  
  nop                          #  76    0x24421  1      OPC=1343  
  nop                          #  77    0x24422  1      OPC=1343  
  nop                          #  78    0x24423  1      OPC=1343  
  nop                          #  79    0x24424  1      OPC=1343  
  nop                          #  80    0x24425  1      OPC=1343  
  nop                          #  81    0x24426  1      OPC=1343  
.L_24420:                      #        0x24427  0      OPC=0     
  addl $0x8, %esp              #  82    0x24427  3      OPC=65    
  addq %r15, %rsp              #  83    0x2442a  3      OPC=72    
  popq %r11                    #  84    0x2442d  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  85    0x2442f  7      OPC=131   
  nop                          #  86    0x24436  1      OPC=1343  
  nop                          #  87    0x24437  1      OPC=1343  
  nop                          #  88    0x24438  1      OPC=1343  
  nop                          #  89    0x24439  1      OPC=1343  
  addq %r15, %r11              #  90    0x2443a  3      OPC=72    
  jmpq %r11                    #  91    0x2443d  3      OPC=928   
  nop                          #  92    0x24440  1      OPC=1343  
  nop                          #  93    0x24441  1      OPC=1343  
  nop                          #  94    0x24442  1      OPC=1343  
  nop                          #  95    0x24443  1      OPC=1343  
  nop                          #  96    0x24444  1      OPC=1343  
  nop                          #  97    0x24445  1      OPC=1343  
  nop                          #  98    0x24446  1      OPC=1343  
  nop                          #  99    0x24447  1      OPC=1343  
  nop                          #  100   0x24448  1      OPC=1343  
  nop                          #  101   0x24449  1      OPC=1343  
  nop                          #  102   0x2444a  1      OPC=1343  
  nop                          #  103   0x2444b  1      OPC=1343  
  nop                          #  104   0x2444c  1      OPC=1343  
  nop                          #  105   0x2444d  1      OPC=1343  
                                                                  
.size run_knucleotide, .-run_knucleotide


  .text
  .globl iswpunct
  .type iswpunct, @function

#! file-offset 0x15f420
#! rip-offset  0x11f420
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.iswpunct:                 #        0x11f420  0      OPC=0     
  pushq %rbx               #  1     0x11f420  1      OPC=1861  
  movl %edi, %ebx          #  2     0x11f421  2      OPC=1157  
  nop                      #  3     0x11f423  1      OPC=1343  
  nop                      #  4     0x11f424  1      OPC=1343  
  nop                      #  5     0x11f425  1      OPC=1343  
  nop                      #  6     0x11f426  1      OPC=1343  
  nop                      #  7     0x11f427  1      OPC=1343  
  nop                      #  8     0x11f428  1      OPC=1343  
  nop                      #  9     0x11f429  1      OPC=1343  
  nop                      #  10    0x11f42a  1      OPC=1343  
  nop                      #  11    0x11f42b  1      OPC=1343  
  nop                      #  12    0x11f42c  1      OPC=1343  
  nop                      #  13    0x11f42d  1      OPC=1343  
  nop                      #  14    0x11f42e  1      OPC=1343  
  nop                      #  15    0x11f42f  1      OPC=1343  
  nop                      #  16    0x11f430  1      OPC=1343  
  nop                      #  17    0x11f431  1      OPC=1343  
  nop                      #  18    0x11f432  1      OPC=1343  
  nop                      #  19    0x11f433  1      OPC=1343  
  nop                      #  20    0x11f434  1      OPC=1343  
  nop                      #  21    0x11f435  1      OPC=1343  
  nop                      #  22    0x11f436  1      OPC=1343  
  nop                      #  23    0x11f437  1      OPC=1343  
  nop                      #  24    0x11f438  1      OPC=1343  
  nop                      #  25    0x11f439  1      OPC=1343  
  nop                      #  26    0x11f43a  1      OPC=1343  
  callq .iswalnum          #  27    0x11f43b  5      OPC=260   
  movl %eax, %edx          #  28    0x11f440  2      OPC=1157  
  xorl %eax, %eax          #  29    0x11f442  2      OPC=3758  
  testl %edx, %edx         #  30    0x11f444  2      OPC=2436  
  je .L_11f460             #  31    0x11f446  6      OPC=893   
  nop                      #  32    0x11f44c  1      OPC=1343  
  nop                      #  33    0x11f44d  1      OPC=1343  
  popq %rbx                #  34    0x11f44e  1      OPC=1694  
  popq %r11                #  35    0x11f44f  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  36    0x11f451  7      OPC=131   
  nop                      #  37    0x11f458  1      OPC=1343  
  nop                      #  38    0x11f459  1      OPC=1343  
  nop                      #  39    0x11f45a  1      OPC=1343  
  nop                      #  40    0x11f45b  1      OPC=1343  
  addq %r15, %r11          #  41    0x11f45c  3      OPC=72    
  jmpq %r11                #  42    0x11f45f  3      OPC=928   
  nop                      #  43    0x11f462  1      OPC=1343  
  nop                      #  44    0x11f463  1      OPC=1343  
  nop                      #  45    0x11f464  1      OPC=1343  
  nop                      #  46    0x11f465  1      OPC=1343  
  nop                      #  47    0x11f466  1      OPC=1343  
  nop                      #  48    0x11f467  1      OPC=1343  
  nop                      #  49    0x11f468  1      OPC=1343  
  nop                      #  50    0x11f469  1      OPC=1343  
  nop                      #  51    0x11f46a  1      OPC=1343  
  nop                      #  52    0x11f46b  1      OPC=1343  
  nop                      #  53    0x11f46c  1      OPC=1343  
.L_11f460:                 #        0x11f46d  0      OPC=0     
  movl %ebx, %edi          #  54    0x11f46d  2      OPC=1157  
  nop                      #  55    0x11f46f  1      OPC=1343  
  nop                      #  56    0x11f470  1      OPC=1343  
  nop                      #  57    0x11f471  1      OPC=1343  
  nop                      #  58    0x11f472  1      OPC=1343  
  nop                      #  59    0x11f473  1      OPC=1343  
  nop                      #  60    0x11f474  1      OPC=1343  
  nop                      #  61    0x11f475  1      OPC=1343  
  nop                      #  62    0x11f476  1      OPC=1343  
  nop                      #  63    0x11f477  1      OPC=1343  
  nop                      #  64    0x11f478  1      OPC=1343  
  nop                      #  65    0x11f479  1      OPC=1343  
  nop                      #  66    0x11f47a  1      OPC=1343  
  nop                      #  67    0x11f47b  1      OPC=1343  
  nop                      #  68    0x11f47c  1      OPC=1343  
  nop                      #  69    0x11f47d  1      OPC=1343  
  nop                      #  70    0x11f47e  1      OPC=1343  
  nop                      #  71    0x11f47f  1      OPC=1343  
  nop                      #  72    0x11f480  1      OPC=1343  
  nop                      #  73    0x11f481  1      OPC=1343  
  nop                      #  74    0x11f482  1      OPC=1343  
  nop                      #  75    0x11f483  1      OPC=1343  
  nop                      #  76    0x11f484  1      OPC=1343  
  nop                      #  77    0x11f485  1      OPC=1343  
  nop                      #  78    0x11f486  1      OPC=1343  
  nop                      #  79    0x11f487  1      OPC=1343  
  callq .iswgraph          #  80    0x11f488  5      OPC=260   
  popq %rbx                #  81    0x11f48d  1      OPC=1694  
  popq %r11                #  82    0x11f48e  2      OPC=1694  
  testl %eax, %eax         #  83    0x11f490  2      OPC=2436  
  setne %al                #  84    0x11f492  3      OPC=2208  
  movzbl %al, %eax         #  85    0x11f495  3      OPC=1304  
  andl $0xffffffe0, %r11d  #  86    0x11f498  7      OPC=131   
  nop                      #  87    0x11f49f  1      OPC=1343  
  nop                      #  88    0x11f4a0  1      OPC=1343  
  nop                      #  89    0x11f4a1  1      OPC=1343  
  nop                      #  90    0x11f4a2  1      OPC=1343  
  addq %r15, %r11          #  91    0x11f4a3  3      OPC=72    
  jmpq %r11                #  92    0x11f4a6  3      OPC=928   
  nop                      #  93    0x11f4a9  1      OPC=1343  
  nop                      #  94    0x11f4aa  1      OPC=1343  
  nop                      #  95    0x11f4ab  1      OPC=1343  
  nop                      #  96    0x11f4ac  1      OPC=1343  
  nop                      #  97    0x11f4ad  1      OPC=1343  
  nop                      #  98    0x11f4ae  1      OPC=1343  
  nop                      #  99    0x11f4af  1      OPC=1343  
  nop                      #  100   0x11f4b0  1      OPC=1343  
  nop                      #  101   0x11f4b1  1      OPC=1343  
  nop                      #  102   0x11f4b2  1      OPC=1343  
  nop                      #  103   0x11f4b3  1      OPC=1343  
                                                               
.size iswpunct, .-iswpunct


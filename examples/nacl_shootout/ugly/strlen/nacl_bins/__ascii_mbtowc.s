  .text
  .globl __ascii_mbtowc
  .type __ascii_mbtowc, @function

#! file-offset 0x161860
#! rip-offset  0x121860
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.__ascii_mbtowc:              #        0x121860  0      OPC=0     
  movl %esi, %esi             #  1     0x121860  2      OPC=1157  
  leal -0x4(%rsp), %eax       #  2     0x121862  4      OPC=1066  
  movl %edx, %edx             #  3     0x121866  2      OPC=1157  
  testq %rsi, %rsi            #  4     0x121868  3      OPC=2438  
  cmoveq %rax, %rsi           #  5     0x12186b  4      OPC=304   
  xorl %eax, %eax             #  6     0x12186f  2      OPC=3758  
  testq %rdx, %rdx            #  7     0x121871  3      OPC=2438  
  jne .L_1218a0               #  8     0x121874  6      OPC=963   
  nop                         #  9     0x12187a  1      OPC=1343  
  nop                         #  10    0x12187b  1      OPC=1343  
  nop                         #  11    0x12187c  1      OPC=1343  
  nop                         #  12    0x12187d  1      OPC=1343  
  nop                         #  13    0x12187e  1      OPC=1343  
  nop                         #  14    0x12187f  1      OPC=1343  
  nop                         #  15    0x121880  1      OPC=1343  
  nop                         #  16    0x121881  1      OPC=1343  
  nop                         #  17    0x121882  1      OPC=1343  
  nop                         #  18    0x121883  1      OPC=1343  
  nop                         #  19    0x121884  1      OPC=1343  
  nop                         #  20    0x121885  1      OPC=1343  
.L_121880:                    #        0x121886  0      OPC=0     
  popq %r11                   #  21    0x121886  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  22    0x121888  7      OPC=131   
  nop                         #  23    0x12188f  1      OPC=1343  
  nop                         #  24    0x121890  1      OPC=1343  
  nop                         #  25    0x121891  1      OPC=1343  
  nop                         #  26    0x121892  1      OPC=1343  
  addq %r15, %r11             #  27    0x121893  3      OPC=72    
  jmpq %r11                   #  28    0x121896  3      OPC=928   
  nop                         #  29    0x121899  1      OPC=1343  
  nop                         #  30    0x12189a  1      OPC=1343  
  nop                         #  31    0x12189b  1      OPC=1343  
  nop                         #  32    0x12189c  1      OPC=1343  
  nop                         #  33    0x12189d  1      OPC=1343  
  nop                         #  34    0x12189e  1      OPC=1343  
  nop                         #  35    0x12189f  1      OPC=1343  
  nop                         #  36    0x1218a0  1      OPC=1343  
  nop                         #  37    0x1218a1  1      OPC=1343  
  nop                         #  38    0x1218a2  1      OPC=1343  
  nop                         #  39    0x1218a3  1      OPC=1343  
  nop                         #  40    0x1218a4  1      OPC=1343  
  nop                         #  41    0x1218a5  1      OPC=1343  
  nop                         #  42    0x1218a6  1      OPC=1343  
  nop                         #  43    0x1218a7  1      OPC=1343  
  nop                         #  44    0x1218a8  1      OPC=1343  
  nop                         #  45    0x1218a9  1      OPC=1343  
  nop                         #  46    0x1218aa  1      OPC=1343  
  nop                         #  47    0x1218ab  1      OPC=1343  
  nop                         #  48    0x1218ac  1      OPC=1343  
.L_1218a0:                    #        0x1218ad  0      OPC=0     
  testl %ecx, %ecx            #  49    0x1218ad  2      OPC=2436  
  movl $0xfffffffe, %eax      #  50    0x1218af  6      OPC=1155  
  je .L_121880                #  51    0x1218b5  6      OPC=893   
  nop                         #  52    0x1218bb  1      OPC=1343  
  nop                         #  53    0x1218bc  1      OPC=1343  
  movl %edx, %edx             #  54    0x1218bd  2      OPC=1157  
  movzbl (%r15,%rdx,1), %eax  #  55    0x1218bf  5      OPC=1302  
  movl %esi, %esi             #  56    0x1218c4  2      OPC=1157  
  movl %eax, (%r15,%rsi,1)    #  57    0x1218c6  4      OPC=1136  
  xorl %eax, %eax             #  58    0x1218ca  2      OPC=3758  
  movl %edx, %edx             #  59    0x1218cc  2      OPC=1157  
  cmpb $0x0, (%r15,%rdx,1)    #  60    0x1218ce  5      OPC=461   
  nop                         #  61    0x1218d3  1      OPC=1343  
  setne %al                   #  62    0x1218d4  3      OPC=2208  
  popq %r11                   #  63    0x1218d7  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  64    0x1218d9  7      OPC=131   
  nop                         #  65    0x1218e0  1      OPC=1343  
  nop                         #  66    0x1218e1  1      OPC=1343  
  nop                         #  67    0x1218e2  1      OPC=1343  
  nop                         #  68    0x1218e3  1      OPC=1343  
  addq %r15, %r11             #  69    0x1218e4  3      OPC=72    
  jmpq %r11                   #  70    0x1218e7  3      OPC=928   
  xchgw %ax, %ax              #  71    0x1218ea  2      OPC=3700  
  nop                         #  72    0x1218ec  1      OPC=1343  
  nop                         #  73    0x1218ed  1      OPC=1343  
  nop                         #  74    0x1218ee  1      OPC=1343  
  nop                         #  75    0x1218ef  1      OPC=1343  
  nop                         #  76    0x1218f0  1      OPC=1343  
  nop                         #  77    0x1218f1  1      OPC=1343  
  nop                         #  78    0x1218f2  1      OPC=1343  
  nop                         #  79    0x1218f3  1      OPC=1343  
  nop                         #  80    0x1218f4  1      OPC=1343  
  nop                         #  81    0x1218f5  1      OPC=1343  
  nop                         #  82    0x1218f6  1      OPC=1343  
  nop                         #  83    0x1218f7  1      OPC=1343  
  nop                         #  84    0x1218f8  1      OPC=1343  
  nop                         #  85    0x1218f9  1      OPC=1343  
  nop                         #  86    0x1218fa  1      OPC=1343  
                                                                  
.size __ascii_mbtowc, .-__ascii_mbtowc


  .text
  .globl pthread_mutex_init
  .type pthread_mutex_init, @function

#! file-offset 0x6ca80
#! rip-offset  0x2ca80
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.pthread_mutex_init:           #        0x2ca80  0      OPC=0     
  movl %esi, %esi              #  1     0x2ca80  2      OPC=1157  
  movl %edi, %edi              #  2     0x2ca82  2      OPC=1157  
  testq %rsi, %rsi             #  3     0x2ca84  3      OPC=2438  
  movl %edi, %edi              #  4     0x2ca87  2      OPC=1157  
  movl $0x0, (%r15,%rdi,1)     #  5     0x2ca89  8      OPC=1135  
  movl %edi, %edi              #  6     0x2ca91  2      OPC=1157  
  movl $0x0, 0xc(%r15,%rdi,1)  #  7     0x2ca93  9      OPC=1135  
  nop                          #  8     0x2ca9c  1      OPC=1343  
  nop                          #  9     0x2ca9d  1      OPC=1343  
  nop                          #  10    0x2ca9e  1      OPC=1343  
  nop                          #  11    0x2ca9f  1      OPC=1343  
  movl %edi, %edi              #  12    0x2caa0  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rdi,1)  #  13    0x2caa2  9      OPC=1135  
  je .L_2cae0                  #  14    0x2caab  6      OPC=893   
  nop                          #  15    0x2cab1  1      OPC=1343  
  nop                          #  16    0x2cab2  1      OPC=1343  
  popq %r11                    #  17    0x2cab3  2      OPC=1694  
  movl %esi, %esi              #  18    0x2cab5  2      OPC=1157  
  movl (%r15,%rsi,1), %eax     #  19    0x2cab7  4      OPC=1156  
  movl %edi, %edi              #  20    0x2cabb  2      OPC=1157  
  movl %eax, 0x4(%r15,%rdi,1)  #  21    0x2cabd  5      OPC=1136  
  xorl %eax, %eax              #  22    0x2cac2  2      OPC=3758  
  xchgw %ax, %ax               #  23    0x2cac4  2      OPC=3700  
  andl $0xffffffe0, %r11d      #  24    0x2cac6  7      OPC=131   
  nop                          #  25    0x2cacd  1      OPC=1343  
  nop                          #  26    0x2cace  1      OPC=1343  
  nop                          #  27    0x2cacf  1      OPC=1343  
  nop                          #  28    0x2cad0  1      OPC=1343  
  addq %r15, %r11              #  29    0x2cad1  3      OPC=72    
  jmpq %r11                    #  30    0x2cad4  3      OPC=928   
  nop                          #  31    0x2cad7  1      OPC=1343  
  nop                          #  32    0x2cad8  1      OPC=1343  
  nop                          #  33    0x2cad9  1      OPC=1343  
  nop                          #  34    0x2cada  1      OPC=1343  
  nop                          #  35    0x2cadb  1      OPC=1343  
  nop                          #  36    0x2cadc  1      OPC=1343  
  nop                          #  37    0x2cadd  1      OPC=1343  
  nop                          #  38    0x2cade  1      OPC=1343  
  nop                          #  39    0x2cadf  1      OPC=1343  
  nop                          #  40    0x2cae0  1      OPC=1343  
  nop                          #  41    0x2cae1  1      OPC=1343  
  nop                          #  42    0x2cae2  1      OPC=1343  
  nop                          #  43    0x2cae3  1      OPC=1343  
  nop                          #  44    0x2cae4  1      OPC=1343  
  nop                          #  45    0x2cae5  1      OPC=1343  
  nop                          #  46    0x2cae6  1      OPC=1343  
  nop                          #  47    0x2cae7  1      OPC=1343  
  nop                          #  48    0x2cae8  1      OPC=1343  
  nop                          #  49    0x2cae9  1      OPC=1343  
  nop                          #  50    0x2caea  1      OPC=1343  
  nop                          #  51    0x2caeb  1      OPC=1343  
  nop                          #  52    0x2caec  1      OPC=1343  
.L_2cae0:                      #        0x2caed  0      OPC=0     
  popq %r11                    #  53    0x2caed  2      OPC=1694  
  xorl %eax, %eax              #  54    0x2caef  2      OPC=3758  
  movl %edi, %edi              #  55    0x2caf1  2      OPC=1157  
  movl $0x0, 0x4(%r15,%rdi,1)  #  56    0x2caf3  9      OPC=1135  
  andl $0xffffffe0, %r11d      #  57    0x2cafc  7      OPC=131   
  nop                          #  58    0x2cb03  1      OPC=1343  
  nop                          #  59    0x2cb04  1      OPC=1343  
  nop                          #  60    0x2cb05  1      OPC=1343  
  nop                          #  61    0x2cb06  1      OPC=1343  
  addq %r15, %r11              #  62    0x2cb07  3      OPC=72    
  jmpq %r11                    #  63    0x2cb0a  3      OPC=928   
  nop                          #  64    0x2cb0d  1      OPC=1343  
  nop                          #  65    0x2cb0e  1      OPC=1343  
  nop                          #  66    0x2cb0f  1      OPC=1343  
  nop                          #  67    0x2cb10  1      OPC=1343  
  nop                          #  68    0x2cb11  1      OPC=1343  
  nop                          #  69    0x2cb12  1      OPC=1343  
  nop                          #  70    0x2cb13  1      OPC=1343  
                                                                  
.size pthread_mutex_init, .-pthread_mutex_init


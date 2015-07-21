  .text
  .globl d_make_name
  .type d_make_name, @function

#! file-offset 0x13d900
#! rip-offset  0xfd900
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.d_make_name:                   #        0xfd900  0      OPC=0     
  movl %edi, %edi               #  1     0xfd900  2      OPC=1157  
  movl %esi, %esi               #  2     0xfd902  2      OPC=1157  
  movl %edi, %edi               #  3     0xfd904  2      OPC=1157  
  movl 0x14(%r15,%rdi,1), %ecx  #  4     0xfd906  5      OPC=1156  
  movl %edi, %edi               #  5     0xfd90b  2      OPC=1157  
  cmpl 0x18(%r15,%rdi,1), %ecx  #  6     0xfd90d  5      OPC=471   
  jge .L_fd940                  #  7     0xfd912  6      OPC=907   
  nop                           #  8     0xfd918  1      OPC=1343  
  nop                           #  9     0xfd919  1      OPC=1343  
  leal (%rcx,%rcx,2), %eax      #  10    0xfd91a  3      OPC=1066  
  addl $0x1, %ecx               #  11    0xfd91d  3      OPC=65    
  nop                           #  12    0xfd920  1      OPC=1343  
  nop                           #  13    0xfd921  1      OPC=1343  
  nop                           #  14    0xfd922  1      OPC=1343  
  nop                           #  15    0xfd923  1      OPC=1343  
  nop                           #  16    0xfd924  1      OPC=1343  
  nop                           #  17    0xfd925  1      OPC=1343  
  movl %edi, %edi               #  18    0xfd926  2      OPC=1157  
  movl %ecx, 0x14(%r15,%rdi,1)  #  19    0xfd928  5      OPC=1136  
  shll $0x2, %eax               #  20    0xfd92d  3      OPC=2269  
  movl %edi, %edi               #  21    0xfd930  2      OPC=1157  
  addl 0x10(%r15,%rdi,1), %eax  #  22    0xfd932  5      OPC=66    
  testq %rax, %rax              #  23    0xfd937  3      OPC=2438  
  jne .L_fd960                  #  24    0xfd93a  6      OPC=963   
  nop                           #  25    0xfd940  1      OPC=1343  
  nop                           #  26    0xfd941  1      OPC=1343  
  nop                           #  27    0xfd942  1      OPC=1343  
  nop                           #  28    0xfd943  1      OPC=1343  
  nop                           #  29    0xfd944  1      OPC=1343  
  nop                           #  30    0xfd945  1      OPC=1343  
  nop                           #  31    0xfd946  1      OPC=1343  
  nop                           #  32    0xfd947  1      OPC=1343  
  nop                           #  33    0xfd948  1      OPC=1343  
  nop                           #  34    0xfd949  1      OPC=1343  
  nop                           #  35    0xfd94a  1      OPC=1343  
  nop                           #  36    0xfd94b  1      OPC=1343  
.L_fd940:                       #        0xfd94c  0      OPC=0     
  xorl %eax, %eax               #  37    0xfd94c  2      OPC=3758  
  popq %r11                     #  38    0xfd94e  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  39    0xfd950  7      OPC=131   
  nop                           #  40    0xfd957  1      OPC=1343  
  nop                           #  41    0xfd958  1      OPC=1343  
  nop                           #  42    0xfd959  1      OPC=1343  
  nop                           #  43    0xfd95a  1      OPC=1343  
  addq %r15, %r11               #  44    0xfd95b  3      OPC=72    
  jmpq %r11                     #  45    0xfd95e  3      OPC=928   
  nop                           #  46    0xfd961  1      OPC=1343  
  nop                           #  47    0xfd962  1      OPC=1343  
  nop                           #  48    0xfd963  1      OPC=1343  
  nop                           #  49    0xfd964  1      OPC=1343  
  nop                           #  50    0xfd965  1      OPC=1343  
  nop                           #  51    0xfd966  1      OPC=1343  
  nop                           #  52    0xfd967  1      OPC=1343  
  nop                           #  53    0xfd968  1      OPC=1343  
  nop                           #  54    0xfd969  1      OPC=1343  
  nop                           #  55    0xfd96a  1      OPC=1343  
  nop                           #  56    0xfd96b  1      OPC=1343  
  nop                           #  57    0xfd96c  1      OPC=1343  
  nop                           #  58    0xfd96d  1      OPC=1343  
  nop                           #  59    0xfd96e  1      OPC=1343  
  nop                           #  60    0xfd96f  1      OPC=1343  
  nop                           #  61    0xfd970  1      OPC=1343  
  nop                           #  62    0xfd971  1      OPC=1343  
  nop                           #  63    0xfd972  1      OPC=1343  
.L_fd960:                       #        0xfd973  0      OPC=0     
  testq %rsi, %rsi              #  64    0xfd973  3      OPC=2438  
  je .L_fd940                   #  65    0xfd976  6      OPC=893   
  nop                           #  66    0xfd97c  1      OPC=1343  
  nop                           #  67    0xfd97d  1      OPC=1343  
  testl %edx, %edx              #  68    0xfd97e  2      OPC=2436  
  je .L_fd940                   #  69    0xfd980  6      OPC=893   
  nop                           #  70    0xfd986  1      OPC=1343  
  nop                           #  71    0xfd987  1      OPC=1343  
  movl %eax, %eax               #  72    0xfd988  2      OPC=1157  
  movl $0x0, (%r15,%rax,1)      #  73    0xfd98a  8      OPC=1135  
  movl %eax, %eax               #  74    0xfd992  2      OPC=1157  
  movl %esi, 0x4(%r15,%rax,1)   #  75    0xfd994  5      OPC=1136  
  nop                           #  76    0xfd999  1      OPC=1343  
  nop                           #  77    0xfd99a  1      OPC=1343  
  nop                           #  78    0xfd99b  1      OPC=1343  
  nop                           #  79    0xfd99c  1      OPC=1343  
  nop                           #  80    0xfd99d  1      OPC=1343  
  nop                           #  81    0xfd99e  1      OPC=1343  
  movl %eax, %eax               #  82    0xfd99f  2      OPC=1157  
  movl %edx, 0x8(%r15,%rax,1)   #  83    0xfd9a1  5      OPC=1136  
  popq %r11                     #  84    0xfd9a6  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  85    0xfd9a8  7      OPC=131   
  nop                           #  86    0xfd9af  1      OPC=1343  
  nop                           #  87    0xfd9b0  1      OPC=1343  
  nop                           #  88    0xfd9b1  1      OPC=1343  
  nop                           #  89    0xfd9b2  1      OPC=1343  
  addq %r15, %r11               #  90    0xfd9b3  3      OPC=72    
  jmpq %r11                     #  91    0xfd9b6  3      OPC=928   
  nop                           #  92    0xfd9b9  1      OPC=1343  
  nop                           #  93    0xfd9ba  1      OPC=1343  
  nop                           #  94    0xfd9bb  1      OPC=1343  
  nop                           #  95    0xfd9bc  1      OPC=1343  
  nop                           #  96    0xfd9bd  1      OPC=1343  
  nop                           #  97    0xfd9be  1      OPC=1343  
  nop                           #  98    0xfd9bf  1      OPC=1343  
  nop                           #  99    0xfd9c0  1      OPC=1343  
  nop                           #  100   0xfd9c1  1      OPC=1343  
  nop                           #  101   0xfd9c2  1      OPC=1343  
  nop                           #  102   0xfd9c3  1      OPC=1343  
  nop                           #  103   0xfd9c4  1      OPC=1343  
  nop                           #  104   0xfd9c5  1      OPC=1343  
                                                                   
.size d_make_name, .-d_make_name


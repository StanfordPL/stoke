  .text
  .globl __register_frame_info_bases
  .type __register_frame_info_bases, @function

#! file-offset 0x14e3e0
#! rip-offset  0x10e3e0
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.__register_frame_info_bases:      #        0x10e3e0  0      OPC=0     
  movl %edi, %edi                  #  1     0x10e3e0  2      OPC=1157  
  movl %esi, %esi                  #  2     0x10e3e2  2      OPC=1157  
  movl %edx, %edx                  #  3     0x10e3e4  2      OPC=1157  
  testq %rdi, %rdi                 #  4     0x10e3e6  3      OPC=2438  
  movl %ecx, %ecx                  #  5     0x10e3e9  2      OPC=1157  
  je .L_10e460                     #  6     0x10e3eb  6      OPC=893   
  nop                              #  7     0x10e3f1  1      OPC=1343  
  nop                              #  8     0x10e3f2  1      OPC=1343  
  movl %edi, %edi                  #  9     0x10e3f3  2      OPC=1157  
  movl (%r15,%rdi,1), %eax         #  10    0x10e3f5  4      OPC=1156  
  testl %eax, %eax                 #  11    0x10e3f9  2      OPC=2436  
  je .L_10e460                     #  12    0x10e3fb  6      OPC=893   
  nop                              #  13    0x10e401  1      OPC=1343  
  nop                              #  14    0x10e402  1      OPC=1343  
  nop                              #  15    0x10e403  1      OPC=1343  
  nop                              #  16    0x10e404  1      OPC=1343  
  nop                              #  17    0x10e405  1      OPC=1343  
  nop                              #  18    0x10e406  1      OPC=1343  
  nop                              #  19    0x10e407  1      OPC=1343  
  nop                              #  20    0x10e408  1      OPC=1343  
  nop                              #  21    0x10e409  1      OPC=1343  
  nop                              #  22    0x10e40a  1      OPC=1343  
  nop                              #  23    0x10e40b  1      OPC=1343  
  movl %esi, %esi                  #  24    0x10e40c  2      OPC=1157  
  movl $0x0, 0x10(%r15,%rsi,1)     #  25    0x10e40e  9      OPC=1135  
  movl %esi, %esi                  #  26    0x10e417  2      OPC=1157  
  movl %edi, 0xc(%r15,%rsi,1)      #  27    0x10e419  5      OPC=1136  
  movl %esi, %esi                  #  28    0x10e41e  2      OPC=1157  
  movw $0x7f8, 0x10(%r15,%rsi,1)   #  29    0x10e420  8      OPC=1132  
  nop                              #  30    0x10e428  1      OPC=1343  
  nop                              #  31    0x10e429  1      OPC=1343  
  nop                              #  32    0x10e42a  1      OPC=1343  
  nop                              #  33    0x10e42b  1      OPC=1343  
  movl 0xff6a6f2(%rip), %eax       #  34    0x10e42c  6      OPC=1156  
  movl %esi, %esi                  #  35    0x10e432  2      OPC=1157  
  movl $0xffffffff, (%r15,%rsi,1)  #  36    0x10e434  8      OPC=1135  
  movl %esi, %esi                  #  37    0x10e43c  2      OPC=1157  
  movl %edx, 0x4(%r15,%rsi,1)      #  38    0x10e43e  5      OPC=1136  
  movl %esi, %esi                  #  39    0x10e443  2      OPC=1157  
  movl %ecx, 0x8(%r15,%rsi,1)      #  40    0x10e445  5      OPC=1136  
  xchgw %ax, %ax                   #  41    0x10e44a  2      OPC=3700  
  movl %esi, %esi                  #  42    0x10e44c  2      OPC=1157  
  movl %eax, 0x14(%r15,%rsi,1)     #  43    0x10e44e  5      OPC=1136  
  movl %esi, 0xff6a6cb(%rip)       #  44    0x10e453  6      OPC=1136  
  nop                              #  45    0x10e459  1      OPC=1343  
  nop                              #  46    0x10e45a  1      OPC=1343  
  nop                              #  47    0x10e45b  1      OPC=1343  
  nop                              #  48    0x10e45c  1      OPC=1343  
  nop                              #  49    0x10e45d  1      OPC=1343  
  nop                              #  50    0x10e45e  1      OPC=1343  
  nop                              #  51    0x10e45f  1      OPC=1343  
  nop                              #  52    0x10e460  1      OPC=1343  
  nop                              #  53    0x10e461  1      OPC=1343  
  nop                              #  54    0x10e462  1      OPC=1343  
  nop                              #  55    0x10e463  1      OPC=1343  
  nop                              #  56    0x10e464  1      OPC=1343  
  nop                              #  57    0x10e465  1      OPC=1343  
  nop                              #  58    0x10e466  1      OPC=1343  
  nop                              #  59    0x10e467  1      OPC=1343  
  nop                              #  60    0x10e468  1      OPC=1343  
  nop                              #  61    0x10e469  1      OPC=1343  
  nop                              #  62    0x10e46a  1      OPC=1343  
  nop                              #  63    0x10e46b  1      OPC=1343  
.L_10e460:                         #        0x10e46c  0      OPC=0     
  popq %r11                        #  64    0x10e46c  2      OPC=1694  
  andl $0xffffffe0, %r11d          #  65    0x10e46e  7      OPC=131   
  nop                              #  66    0x10e475  1      OPC=1343  
  nop                              #  67    0x10e476  1      OPC=1343  
  nop                              #  68    0x10e477  1      OPC=1343  
  nop                              #  69    0x10e478  1      OPC=1343  
  addq %r15, %r11                  #  70    0x10e479  3      OPC=72    
  jmpq %r11                        #  71    0x10e47c  3      OPC=928   
  nop                              #  72    0x10e47f  1      OPC=1343  
  nop                              #  73    0x10e480  1      OPC=1343  
  nop                              #  74    0x10e481  1      OPC=1343  
  nop                              #  75    0x10e482  1      OPC=1343  
  nop                              #  76    0x10e483  1      OPC=1343  
  nop                              #  77    0x10e484  1      OPC=1343  
  nop                              #  78    0x10e485  1      OPC=1343  
  nop                              #  79    0x10e486  1      OPC=1343  
  nop                              #  80    0x10e487  1      OPC=1343  
  nop                              #  81    0x10e488  1      OPC=1343  
  nop                              #  82    0x10e489  1      OPC=1343  
  nop                              #  83    0x10e48a  1      OPC=1343  
  nop                              #  84    0x10e48b  1      OPC=1343  
  nop                              #  85    0x10e48c  1      OPC=1343  
  nop                              #  86    0x10e48d  1      OPC=1343  
  nop                              #  87    0x10e48e  1      OPC=1343  
  nop                              #  88    0x10e48f  1      OPC=1343  
  nop                              #  89    0x10e490  1      OPC=1343  
  nop                              #  90    0x10e491  1      OPC=1343  
  nop                              #  91    0x10e492  1      OPC=1343  
                                                                       
.size __register_frame_info_bases, .-__register_frame_info_bases


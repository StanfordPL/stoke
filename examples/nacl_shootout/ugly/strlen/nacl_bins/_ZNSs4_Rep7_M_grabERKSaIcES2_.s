  .text
  .globl _ZNSs4_Rep7_M_grabERKSaIcES2_
  .type _ZNSs4_Rep7_M_grabERKSaIcES2_, @function

#! file-offset 0xebaa0
#! rip-offset  0xabaa0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode    
._ZNSs4_Rep7_M_grabERKSaIcES2_:       #        0xabaa0  0      OPC=0     
  movl %edi, %edi                     #  1     0xabaa0  2      OPC=1157  
  movl %esi, %esi                     #  2     0xabaa2  2      OPC=1157  
  movl %edi, %edi                     #  3     0xabaa4  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax         #  4     0xabaa6  5      OPC=1156  
  testl %eax, %eax                    #  5     0xabaab  2      OPC=2436  
  js .L_abae0                         #  6     0xabaad  6      OPC=1043  
  nop                                 #  7     0xabab3  1      OPC=1343  
  nop                                 #  8     0xabab4  1      OPC=1343  
  cmpl $0x10073580, %edi              #  9     0xabab5  6      OPC=469   
  jne .L_abb00                        #  10    0xababb  6      OPC=963   
  nop                                 #  11    0xabac1  1      OPC=1343  
  nop                                 #  12    0xabac2  1      OPC=1343  
  nop                                 #  13    0xabac3  1      OPC=1343  
  nop                                 #  14    0xabac4  1      OPC=1343  
  nop                                 #  15    0xabac5  1      OPC=1343  
  nop                                 #  16    0xabac6  1      OPC=1343  
  nop                                 #  17    0xabac7  1      OPC=1343  
  nop                                 #  18    0xabac8  1      OPC=1343  
  nop                                 #  19    0xabac9  1      OPC=1343  
  nop                                 #  20    0xabaca  1      OPC=1343  
  nop                                 #  21    0xabacb  1      OPC=1343  
.L_abac0:                             #        0xabacc  0      OPC=0     
  popq %r11                           #  22    0xabacc  2      OPC=1694  
  leal 0xc(%rdi), %eax                #  23    0xabace  3      OPC=1066  
  andl $0xffffffe0, %r11d             #  24    0xabad1  7      OPC=131   
  nop                                 #  25    0xabad8  1      OPC=1343  
  nop                                 #  26    0xabad9  1      OPC=1343  
  nop                                 #  27    0xabada  1      OPC=1343  
  nop                                 #  28    0xabadb  1      OPC=1343  
  addq %r15, %r11                     #  29    0xabadc  3      OPC=72    
  jmpq %r11                           #  30    0xabadf  3      OPC=928   
  xchgw %ax, %ax                      #  31    0xabae2  2      OPC=3700  
  nop                                 #  32    0xabae4  1      OPC=1343  
  nop                                 #  33    0xabae5  1      OPC=1343  
  nop                                 #  34    0xabae6  1      OPC=1343  
  nop                                 #  35    0xabae7  1      OPC=1343  
  nop                                 #  36    0xabae8  1      OPC=1343  
  nop                                 #  37    0xabae9  1      OPC=1343  
  nop                                 #  38    0xabaea  1      OPC=1343  
  nop                                 #  39    0xabaeb  1      OPC=1343  
  nop                                 #  40    0xabaec  1      OPC=1343  
  nop                                 #  41    0xabaed  1      OPC=1343  
  nop                                 #  42    0xabaee  1      OPC=1343  
  nop                                 #  43    0xabaef  1      OPC=1343  
  nop                                 #  44    0xabaf0  1      OPC=1343  
  nop                                 #  45    0xabaf1  1      OPC=1343  
  nop                                 #  46    0xabaf2  1      OPC=1343  
.L_abae0:                             #        0xabaf3  0      OPC=0     
  xorl %edx, %edx                     #  47    0xabaf3  2      OPC=3758  
  jmpq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  48    0xabaf5  5      OPC=930   
  nop                                 #  49    0xabafa  1      OPC=1343  
  nop                                 #  50    0xabafb  1      OPC=1343  
  nop                                 #  51    0xabafc  1      OPC=1343  
  nop                                 #  52    0xabafd  1      OPC=1343  
  nop                                 #  53    0xabafe  1      OPC=1343  
  nop                                 #  54    0xabaff  1      OPC=1343  
  nop                                 #  55    0xabb00  1      OPC=1343  
  nop                                 #  56    0xabb01  1      OPC=1343  
  nop                                 #  57    0xabb02  1      OPC=1343  
  nop                                 #  58    0xabb03  1      OPC=1343  
  nop                                 #  59    0xabb04  1      OPC=1343  
  nop                                 #  60    0xabb05  1      OPC=1343  
  nop                                 #  61    0xabb06  1      OPC=1343  
  nop                                 #  62    0xabb07  1      OPC=1343  
  nop                                 #  63    0xabb08  1      OPC=1343  
  nop                                 #  64    0xabb09  1      OPC=1343  
  nop                                 #  65    0xabb0a  1      OPC=1343  
  nop                                 #  66    0xabb0b  1      OPC=1343  
  nop                                 #  67    0xabb0c  1      OPC=1343  
  nop                                 #  68    0xabb0d  1      OPC=1343  
  nop                                 #  69    0xabb0e  1      OPC=1343  
  nop                                 #  70    0xabb0f  1      OPC=1343  
  nop                                 #  71    0xabb10  1      OPC=1343  
  nop                                 #  72    0xabb11  1      OPC=1343  
  nop                                 #  73    0xabb12  1      OPC=1343  
.L_abb00:                             #        0xabb13  0      OPC=0     
  addl $0x1, %eax                     #  74    0xabb13  3      OPC=65    
  movl %edi, %edi                     #  75    0xabb16  2      OPC=1157  
  movl %eax, 0x8(%r15,%rdi,1)         #  76    0xabb18  5      OPC=1136  
  jmpq .L_abac0                       #  77    0xabb1d  5      OPC=930   
  nop                                 #  78    0xabb22  1      OPC=1343  
  nop                                 #  79    0xabb23  1      OPC=1343  
  nop                                 #  80    0xabb24  1      OPC=1343  
  nop                                 #  81    0xabb25  1      OPC=1343  
  nop                                 #  82    0xabb26  1      OPC=1343  
  nop                                 #  83    0xabb27  1      OPC=1343  
  nop                                 #  84    0xabb28  1      OPC=1343  
  nop                                 #  85    0xabb29  1      OPC=1343  
  nop                                 #  86    0xabb2a  1      OPC=1343  
  nop                                 #  87    0xabb2b  1      OPC=1343  
  nop                                 #  88    0xabb2c  1      OPC=1343  
  nop                                 #  89    0xabb2d  1      OPC=1343  
  nop                                 #  90    0xabb2e  1      OPC=1343  
  nop                                 #  91    0xabb2f  1      OPC=1343  
  nop                                 #  92    0xabb30  1      OPC=1343  
  nop                                 #  93    0xabb31  1      OPC=1343  
  nop                                 #  94    0xabb32  1      OPC=1343  
  nop                                 #  95    0xabb33  1      OPC=1343  
  nop                                 #  96    0xabb34  1      OPC=1343  
  nop                                 #  97    0xabb35  1      OPC=1343  
  nop                                 #  98    0xabb36  1      OPC=1343  
  nop                                 #  99    0xabb37  1      OPC=1343  
                                                                         
.size _ZNSs4_Rep7_M_grabERKSaIcES2_, .-_ZNSs4_Rep7_M_grabERKSaIcES2_


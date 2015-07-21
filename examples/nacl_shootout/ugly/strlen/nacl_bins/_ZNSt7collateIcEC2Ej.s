  .text
  .globl _ZNSt7collateIcEC2Ej
  .type _ZNSt7collateIcEC2Ej, @function

#! file-offset 0xbbca0
#! rip-offset  0x7bca0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode    
._ZNSt7collateIcEC2Ej:                          #        0x7bca0  0      OPC=0     
  pushq %rbx                                    #  1     0x7bca0  1      OPC=1861  
  xorl %eax, %eax                               #  2     0x7bca1  2      OPC=3758  
  movl %edi, %ebx                               #  3     0x7bca3  2      OPC=1157  
  subl $0x10, %esp                              #  4     0x7bca5  3      OPC=2384  
  addq %r15, %rsp                               #  5     0x7bca8  3      OPC=72    
  testl %esi, %esi                              #  6     0x7bcab  2      OPC=2436  
  movl %ebx, %ebx                               #  7     0x7bcad  2      OPC=1157  
  movl $0x1003aff8, (%r15,%rbx,1)               #  8     0x7bcaf  8      OPC=1135  
  setne %al                                     #  9     0x7bcb7  3      OPC=2208  
  nop                                           #  10    0x7bcba  1      OPC=1343  
  nop                                           #  11    0x7bcbb  1      OPC=1343  
  nop                                           #  12    0x7bcbc  1      OPC=1343  
  nop                                           #  13    0x7bcbd  1      OPC=1343  
  nop                                           #  14    0x7bcbe  1      OPC=1343  
  nop                                           #  15    0x7bcbf  1      OPC=1343  
  movl %ebx, %ebx                               #  16    0x7bcc0  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0x7bcc2  5      OPC=1136  
  nop                                           #  18    0x7bcc7  1      OPC=1343  
  nop                                           #  19    0x7bcc8  1      OPC=1343  
  nop                                           #  20    0x7bcc9  1      OPC=1343  
  nop                                           #  21    0x7bcca  1      OPC=1343  
  nop                                           #  22    0x7bccb  1      OPC=1343  
  nop                                           #  23    0x7bccc  1      OPC=1343  
  nop                                           #  24    0x7bccd  1      OPC=1343  
  nop                                           #  25    0x7bcce  1      OPC=1343  
  nop                                           #  26    0x7bccf  1      OPC=1343  
  nop                                           #  27    0x7bcd0  1      OPC=1343  
  nop                                           #  28    0x7bcd1  1      OPC=1343  
  nop                                           #  29    0x7bcd2  1      OPC=1343  
  nop                                           #  30    0x7bcd3  1      OPC=1343  
  nop                                           #  31    0x7bcd4  1      OPC=1343  
  nop                                           #  32    0x7bcd5  1      OPC=1343  
  nop                                           #  33    0x7bcd6  1      OPC=1343  
  nop                                           #  34    0x7bcd7  1      OPC=1343  
  nop                                           #  35    0x7bcd8  1      OPC=1343  
  nop                                           #  36    0x7bcd9  1      OPC=1343  
  nop                                           #  37    0x7bcda  1      OPC=1343  
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0x7bcdb  5      OPC=260   
  movl %ebx, %ebx                               #  39    0x7bce0  2      OPC=1157  
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0x7bce2  5      OPC=1136  
  addl $0x10, %esp                              #  41    0x7bce7  3      OPC=65    
  addq %r15, %rsp                               #  42    0x7bcea  3      OPC=72    
  popq %rbx                                     #  43    0x7bced  1      OPC=1694  
  popq %r11                                     #  44    0x7bcee  2      OPC=1694  
  andl $0xffffffe0, %r11d                       #  45    0x7bcf0  7      OPC=131   
  nop                                           #  46    0x7bcf7  1      OPC=1343  
  nop                                           #  47    0x7bcf8  1      OPC=1343  
  nop                                           #  48    0x7bcf9  1      OPC=1343  
  nop                                           #  49    0x7bcfa  1      OPC=1343  
  addq %r15, %r11                               #  50    0x7bcfb  3      OPC=72    
  jmpq %r11                                     #  51    0x7bcfe  3      OPC=928   
  nop                                           #  52    0x7bd01  1      OPC=1343  
  nop                                           #  53    0x7bd02  1      OPC=1343  
  nop                                           #  54    0x7bd03  1      OPC=1343  
  nop                                           #  55    0x7bd04  1      OPC=1343  
  nop                                           #  56    0x7bd05  1      OPC=1343  
  nop                                           #  57    0x7bd06  1      OPC=1343  
  movl %ebx, %edi                               #  58    0x7bd07  2      OPC=1157  
  movl %eax, 0x8(%rsp)                          #  59    0x7bd09  4      OPC=1136  
  nop                                           #  60    0x7bd0d  1      OPC=1343  
  nop                                           #  61    0x7bd0e  1      OPC=1343  
  nop                                           #  62    0x7bd0f  1      OPC=1343  
  nop                                           #  63    0x7bd10  1      OPC=1343  
  nop                                           #  64    0x7bd11  1      OPC=1343  
  nop                                           #  65    0x7bd12  1      OPC=1343  
  nop                                           #  66    0x7bd13  1      OPC=1343  
  nop                                           #  67    0x7bd14  1      OPC=1343  
  nop                                           #  68    0x7bd15  1      OPC=1343  
  nop                                           #  69    0x7bd16  1      OPC=1343  
  nop                                           #  70    0x7bd17  1      OPC=1343  
  nop                                           #  71    0x7bd18  1      OPC=1343  
  nop                                           #  72    0x7bd19  1      OPC=1343  
  nop                                           #  73    0x7bd1a  1      OPC=1343  
  nop                                           #  74    0x7bd1b  1      OPC=1343  
  nop                                           #  75    0x7bd1c  1      OPC=1343  
  nop                                           #  76    0x7bd1d  1      OPC=1343  
  nop                                           #  77    0x7bd1e  1      OPC=1343  
  nop                                           #  78    0x7bd1f  1      OPC=1343  
  nop                                           #  79    0x7bd20  1      OPC=1343  
  nop                                           #  80    0x7bd21  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                 #  81    0x7bd22  5      OPC=260   
  movl 0x8(%rsp), %eax                          #  82    0x7bd27  4      OPC=1156  
  movl %eax, %edi                               #  83    0x7bd2b  2      OPC=1157  
  nop                                           #  84    0x7bd2d  1      OPC=1343  
  nop                                           #  85    0x7bd2e  1      OPC=1343  
  nop                                           #  86    0x7bd2f  1      OPC=1343  
  nop                                           #  87    0x7bd30  1      OPC=1343  
  nop                                           #  88    0x7bd31  1      OPC=1343  
  nop                                           #  89    0x7bd32  1      OPC=1343  
  nop                                           #  90    0x7bd33  1      OPC=1343  
  nop                                           #  91    0x7bd34  1      OPC=1343  
  nop                                           #  92    0x7bd35  1      OPC=1343  
  nop                                           #  93    0x7bd36  1      OPC=1343  
  nop                                           #  94    0x7bd37  1      OPC=1343  
  nop                                           #  95    0x7bd38  1      OPC=1343  
  nop                                           #  96    0x7bd39  1      OPC=1343  
  nop                                           #  97    0x7bd3a  1      OPC=1343  
  nop                                           #  98    0x7bd3b  1      OPC=1343  
  nop                                           #  99    0x7bd3c  1      OPC=1343  
  nop                                           #  100   0x7bd3d  1      OPC=1343  
  nop                                           #  101   0x7bd3e  1      OPC=1343  
  nop                                           #  102   0x7bd3f  1      OPC=1343  
  nop                                           #  103   0x7bd40  1      OPC=1343  
  nop                                           #  104   0x7bd41  1      OPC=1343  
  callq ._Unwind_Resume                         #  105   0x7bd42  5      OPC=260   
                                                                                   
.size _ZNSt7collateIcEC2Ej, .-_ZNSt7collateIcEC2Ej


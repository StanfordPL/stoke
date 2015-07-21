  .text
  .globl _ZNSt8ios_baseD1Ev
  .type _ZNSt8ios_baseD1Ev, @function

#! file-offset 0x127dc0
#! rip-offset  0xe7dc0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt8ios_baseD1Ev:                                   #        0xe7dc0  0      OPC=0     
  pushq %rbx                                           #  1     0xe7dc0  1      OPC=1861  
  movl %edi, %ebx                                      #  2     0xe7dc1  2      OPC=1157  
  xorl %esi, %esi                                      #  3     0xe7dc3  2      OPC=3758  
  movl %ebx, %edi                                      #  4     0xe7dc5  2      OPC=1157  
  movl %ebx, %ebx                                      #  5     0xe7dc7  2      OPC=1157  
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe7dc9  8      OPC=1135  
  nop                                                  #  7     0xe7dd1  1      OPC=1343  
  nop                                                  #  8     0xe7dd2  1      OPC=1343  
  nop                                                  #  9     0xe7dd3  1      OPC=1343  
  nop                                                  #  10    0xe7dd4  1      OPC=1343  
  nop                                                  #  11    0xe7dd5  1      OPC=1343  
  nop                                                  #  12    0xe7dd6  1      OPC=1343  
  nop                                                  #  13    0xe7dd7  1      OPC=1343  
  nop                                                  #  14    0xe7dd8  1      OPC=1343  
  nop                                                  #  15    0xe7dd9  1      OPC=1343  
  nop                                                  #  16    0xe7dda  1      OPC=1343  
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe7ddb  5      OPC=260   
  movl %ebx, %edi                                      #  18    0xe7de0  2      OPC=1157  
  nop                                                  #  19    0xe7de2  1      OPC=1343  
  nop                                                  #  20    0xe7de3  1      OPC=1343  
  nop                                                  #  21    0xe7de4  1      OPC=1343  
  nop                                                  #  22    0xe7de5  1      OPC=1343  
  nop                                                  #  23    0xe7de6  1      OPC=1343  
  nop                                                  #  24    0xe7de7  1      OPC=1343  
  nop                                                  #  25    0xe7de8  1      OPC=1343  
  nop                                                  #  26    0xe7de9  1      OPC=1343  
  nop                                                  #  27    0xe7dea  1      OPC=1343  
  nop                                                  #  28    0xe7deb  1      OPC=1343  
  nop                                                  #  29    0xe7dec  1      OPC=1343  
  nop                                                  #  30    0xe7ded  1      OPC=1343  
  nop                                                  #  31    0xe7dee  1      OPC=1343  
  nop                                                  #  32    0xe7def  1      OPC=1343  
  nop                                                  #  33    0xe7df0  1      OPC=1343  
  nop                                                  #  34    0xe7df1  1      OPC=1343  
  nop                                                  #  35    0xe7df2  1      OPC=1343  
  nop                                                  #  36    0xe7df3  1      OPC=1343  
  nop                                                  #  37    0xe7df4  1      OPC=1343  
  nop                                                  #  38    0xe7df5  1      OPC=1343  
  nop                                                  #  39    0xe7df6  1      OPC=1343  
  nop                                                  #  40    0xe7df7  1      OPC=1343  
  nop                                                  #  41    0xe7df8  1      OPC=1343  
  nop                                                  #  42    0xe7df9  1      OPC=1343  
  nop                                                  #  43    0xe7dfa  1      OPC=1343  
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe7dfb  5      OPC=260   
  movl %ebx, %ebx                                      #  45    0xe7e00  2      OPC=1157  
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe7e02  5      OPC=1156  
  leal 0x24(%rbx), %eax                                #  47    0xe7e07  3      OPC=1066  
  cmpl %edi, %eax                                      #  48    0xe7e0a  2      OPC=472   
  je .L_e7e40                                          #  49    0xe7e0c  6      OPC=893   
  nop                                                  #  50    0xe7e12  1      OPC=1343  
  nop                                                  #  51    0xe7e13  1      OPC=1343  
  testq %rdi, %rdi                                     #  52    0xe7e14  3      OPC=2438  
  je .L_e7e20                                          #  53    0xe7e17  6      OPC=893   
  nop                                                  #  54    0xe7e1d  1      OPC=1343  
  nop                                                  #  55    0xe7e1e  1      OPC=1343  
  nop                                                  #  56    0xe7e1f  1      OPC=1343  
  nop                                                  #  57    0xe7e20  1      OPC=1343  
  nop                                                  #  58    0xe7e21  1      OPC=1343  
  nop                                                  #  59    0xe7e22  1      OPC=1343  
  nop                                                  #  60    0xe7e23  1      OPC=1343  
  nop                                                  #  61    0xe7e24  1      OPC=1343  
  nop                                                  #  62    0xe7e25  1      OPC=1343  
  nop                                                  #  63    0xe7e26  1      OPC=1343  
  callq ._ZdaPv                                        #  64    0xe7e27  5      OPC=260   
.L_e7e20:                                              #        0xe7e2c  0      OPC=0     
  movl %ebx, %ebx                                      #  65    0xe7e2c  2      OPC=1157  
  movl $0x0, 0x68(%r15,%rbx,1)                         #  66    0xe7e2e  9      OPC=1135  
  nop                                                  #  67    0xe7e37  1      OPC=1343  
  nop                                                  #  68    0xe7e38  1      OPC=1343  
  nop                                                  #  69    0xe7e39  1      OPC=1343  
  nop                                                  #  70    0xe7e3a  1      OPC=1343  
  nop                                                  #  71    0xe7e3b  1      OPC=1343  
  nop                                                  #  72    0xe7e3c  1      OPC=1343  
  nop                                                  #  73    0xe7e3d  1      OPC=1343  
  nop                                                  #  74    0xe7e3e  1      OPC=1343  
  nop                                                  #  75    0xe7e3f  1      OPC=1343  
  nop                                                  #  76    0xe7e40  1      OPC=1343  
  nop                                                  #  77    0xe7e41  1      OPC=1343  
  nop                                                  #  78    0xe7e42  1      OPC=1343  
  nop                                                  #  79    0xe7e43  1      OPC=1343  
  nop                                                  #  80    0xe7e44  1      OPC=1343  
  nop                                                  #  81    0xe7e45  1      OPC=1343  
  nop                                                  #  82    0xe7e46  1      OPC=1343  
  nop                                                  #  83    0xe7e47  1      OPC=1343  
  nop                                                  #  84    0xe7e48  1      OPC=1343  
  nop                                                  #  85    0xe7e49  1      OPC=1343  
  nop                                                  #  86    0xe7e4a  1      OPC=1343  
  nop                                                  #  87    0xe7e4b  1      OPC=1343  
.L_e7e40:                                              #        0xe7e4c  0      OPC=0     
  leal 0x6c(%rbx), %edi                                #  88    0xe7e4c  3      OPC=1066  
  popq %rbx                                            #  89    0xe7e4f  1      OPC=1694  
  jmpq ._ZNSt6localeD1Ev                               #  90    0xe7e50  5      OPC=930   
  nop                                                  #  91    0xe7e55  1      OPC=1343  
  nop                                                  #  92    0xe7e56  1      OPC=1343  
  nop                                                  #  93    0xe7e57  1      OPC=1343  
  nop                                                  #  94    0xe7e58  1      OPC=1343  
  nop                                                  #  95    0xe7e59  1      OPC=1343  
  nop                                                  #  96    0xe7e5a  1      OPC=1343  
  nop                                                  #  97    0xe7e5b  1      OPC=1343  
  nop                                                  #  98    0xe7e5c  1      OPC=1343  
  nop                                                  #  99    0xe7e5d  1      OPC=1343  
  nop                                                  #  100   0xe7e5e  1      OPC=1343  
  nop                                                  #  101   0xe7e5f  1      OPC=1343  
  nop                                                  #  102   0xe7e60  1      OPC=1343  
  nop                                                  #  103   0xe7e61  1      OPC=1343  
  nop                                                  #  104   0xe7e62  1      OPC=1343  
  nop                                                  #  105   0xe7e63  1      OPC=1343  
  nop                                                  #  106   0xe7e64  1      OPC=1343  
  nop                                                  #  107   0xe7e65  1      OPC=1343  
  nop                                                  #  108   0xe7e66  1      OPC=1343  
  nop                                                  #  109   0xe7e67  1      OPC=1343  
  nop                                                  #  110   0xe7e68  1      OPC=1343  
  nop                                                  #  111   0xe7e69  1      OPC=1343  
  nop                                                  #  112   0xe7e6a  1      OPC=1343  
  nop                                                  #  113   0xe7e6b  1      OPC=1343  
                                                                                          
.size _ZNSt8ios_baseD1Ev, .-_ZNSt8ios_baseD1Ev


  .text
  .globl _ZNSt8ios_baseD2Ev
  .type _ZNSt8ios_baseD2Ev, @function

#! file-offset 0x127e60
#! rip-offset  0xe7e60
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt8ios_baseD2Ev:                                   #        0xe7e60  0      OPC=0     
  pushq %rbx                                           #  1     0xe7e60  1      OPC=1861  
  movl %edi, %ebx                                      #  2     0xe7e61  2      OPC=1157  
  xorl %esi, %esi                                      #  3     0xe7e63  2      OPC=3758  
  movl %ebx, %edi                                      #  4     0xe7e65  2      OPC=1157  
  movl %ebx, %ebx                                      #  5     0xe7e67  2      OPC=1157  
  movl $0x1003d938, (%r15,%rbx,1)                      #  6     0xe7e69  8      OPC=1135  
  nop                                                  #  7     0xe7e71  1      OPC=1343  
  nop                                                  #  8     0xe7e72  1      OPC=1343  
  nop                                                  #  9     0xe7e73  1      OPC=1343  
  nop                                                  #  10    0xe7e74  1      OPC=1343  
  nop                                                  #  11    0xe7e75  1      OPC=1343  
  nop                                                  #  12    0xe7e76  1      OPC=1343  
  nop                                                  #  13    0xe7e77  1      OPC=1343  
  nop                                                  #  14    0xe7e78  1      OPC=1343  
  nop                                                  #  15    0xe7e79  1      OPC=1343  
  nop                                                  #  16    0xe7e7a  1      OPC=1343  
  callq ._ZNSt8ios_base17_M_call_callbacksENS_5eventE  #  17    0xe7e7b  5      OPC=260   
  movl %ebx, %edi                                      #  18    0xe7e80  2      OPC=1157  
  nop                                                  #  19    0xe7e82  1      OPC=1343  
  nop                                                  #  20    0xe7e83  1      OPC=1343  
  nop                                                  #  21    0xe7e84  1      OPC=1343  
  nop                                                  #  22    0xe7e85  1      OPC=1343  
  nop                                                  #  23    0xe7e86  1      OPC=1343  
  nop                                                  #  24    0xe7e87  1      OPC=1343  
  nop                                                  #  25    0xe7e88  1      OPC=1343  
  nop                                                  #  26    0xe7e89  1      OPC=1343  
  nop                                                  #  27    0xe7e8a  1      OPC=1343  
  nop                                                  #  28    0xe7e8b  1      OPC=1343  
  nop                                                  #  29    0xe7e8c  1      OPC=1343  
  nop                                                  #  30    0xe7e8d  1      OPC=1343  
  nop                                                  #  31    0xe7e8e  1      OPC=1343  
  nop                                                  #  32    0xe7e8f  1      OPC=1343  
  nop                                                  #  33    0xe7e90  1      OPC=1343  
  nop                                                  #  34    0xe7e91  1      OPC=1343  
  nop                                                  #  35    0xe7e92  1      OPC=1343  
  nop                                                  #  36    0xe7e93  1      OPC=1343  
  nop                                                  #  37    0xe7e94  1      OPC=1343  
  nop                                                  #  38    0xe7e95  1      OPC=1343  
  nop                                                  #  39    0xe7e96  1      OPC=1343  
  nop                                                  #  40    0xe7e97  1      OPC=1343  
  nop                                                  #  41    0xe7e98  1      OPC=1343  
  nop                                                  #  42    0xe7e99  1      OPC=1343  
  nop                                                  #  43    0xe7e9a  1      OPC=1343  
  callq ._ZNSt8ios_base20_M_dispose_callbacksEv        #  44    0xe7e9b  5      OPC=260   
  movl %ebx, %ebx                                      #  45    0xe7ea0  2      OPC=1157  
  movl 0x68(%r15,%rbx,1), %edi                         #  46    0xe7ea2  5      OPC=1156  
  leal 0x24(%rbx), %eax                                #  47    0xe7ea7  3      OPC=1066  
  cmpl %edi, %eax                                      #  48    0xe7eaa  2      OPC=472   
  je .L_e7ee0                                          #  49    0xe7eac  6      OPC=893   
  nop                                                  #  50    0xe7eb2  1      OPC=1343  
  nop                                                  #  51    0xe7eb3  1      OPC=1343  
  testq %rdi, %rdi                                     #  52    0xe7eb4  3      OPC=2438  
  je .L_e7ec0                                          #  53    0xe7eb7  6      OPC=893   
  nop                                                  #  54    0xe7ebd  1      OPC=1343  
  nop                                                  #  55    0xe7ebe  1      OPC=1343  
  nop                                                  #  56    0xe7ebf  1      OPC=1343  
  nop                                                  #  57    0xe7ec0  1      OPC=1343  
  nop                                                  #  58    0xe7ec1  1      OPC=1343  
  nop                                                  #  59    0xe7ec2  1      OPC=1343  
  nop                                                  #  60    0xe7ec3  1      OPC=1343  
  nop                                                  #  61    0xe7ec4  1      OPC=1343  
  nop                                                  #  62    0xe7ec5  1      OPC=1343  
  nop                                                  #  63    0xe7ec6  1      OPC=1343  
  callq ._ZdaPv                                        #  64    0xe7ec7  5      OPC=260   
.L_e7ec0:                                              #        0xe7ecc  0      OPC=0     
  movl %ebx, %ebx                                      #  65    0xe7ecc  2      OPC=1157  
  movl $0x0, 0x68(%r15,%rbx,1)                         #  66    0xe7ece  9      OPC=1135  
  nop                                                  #  67    0xe7ed7  1      OPC=1343  
  nop                                                  #  68    0xe7ed8  1      OPC=1343  
  nop                                                  #  69    0xe7ed9  1      OPC=1343  
  nop                                                  #  70    0xe7eda  1      OPC=1343  
  nop                                                  #  71    0xe7edb  1      OPC=1343  
  nop                                                  #  72    0xe7edc  1      OPC=1343  
  nop                                                  #  73    0xe7edd  1      OPC=1343  
  nop                                                  #  74    0xe7ede  1      OPC=1343  
  nop                                                  #  75    0xe7edf  1      OPC=1343  
  nop                                                  #  76    0xe7ee0  1      OPC=1343  
  nop                                                  #  77    0xe7ee1  1      OPC=1343  
  nop                                                  #  78    0xe7ee2  1      OPC=1343  
  nop                                                  #  79    0xe7ee3  1      OPC=1343  
  nop                                                  #  80    0xe7ee4  1      OPC=1343  
  nop                                                  #  81    0xe7ee5  1      OPC=1343  
  nop                                                  #  82    0xe7ee6  1      OPC=1343  
  nop                                                  #  83    0xe7ee7  1      OPC=1343  
  nop                                                  #  84    0xe7ee8  1      OPC=1343  
  nop                                                  #  85    0xe7ee9  1      OPC=1343  
  nop                                                  #  86    0xe7eea  1      OPC=1343  
  nop                                                  #  87    0xe7eeb  1      OPC=1343  
.L_e7ee0:                                              #        0xe7eec  0      OPC=0     
  leal 0x6c(%rbx), %edi                                #  88    0xe7eec  3      OPC=1066  
  popq %rbx                                            #  89    0xe7eef  1      OPC=1694  
  jmpq ._ZNSt6localeD1Ev                               #  90    0xe7ef0  5      OPC=930   
  nop                                                  #  91    0xe7ef5  1      OPC=1343  
  nop                                                  #  92    0xe7ef6  1      OPC=1343  
  nop                                                  #  93    0xe7ef7  1      OPC=1343  
  nop                                                  #  94    0xe7ef8  1      OPC=1343  
  nop                                                  #  95    0xe7ef9  1      OPC=1343  
  nop                                                  #  96    0xe7efa  1      OPC=1343  
  nop                                                  #  97    0xe7efb  1      OPC=1343  
  nop                                                  #  98    0xe7efc  1      OPC=1343  
  nop                                                  #  99    0xe7efd  1      OPC=1343  
  nop                                                  #  100   0xe7efe  1      OPC=1343  
  nop                                                  #  101   0xe7eff  1      OPC=1343  
  nop                                                  #  102   0xe7f00  1      OPC=1343  
  nop                                                  #  103   0xe7f01  1      OPC=1343  
  nop                                                  #  104   0xe7f02  1      OPC=1343  
  nop                                                  #  105   0xe7f03  1      OPC=1343  
  nop                                                  #  106   0xe7f04  1      OPC=1343  
  nop                                                  #  107   0xe7f05  1      OPC=1343  
  nop                                                  #  108   0xe7f06  1      OPC=1343  
  nop                                                  #  109   0xe7f07  1      OPC=1343  
  nop                                                  #  110   0xe7f08  1      OPC=1343  
  nop                                                  #  111   0xe7f09  1      OPC=1343  
  nop                                                  #  112   0xe7f0a  1      OPC=1343  
  nop                                                  #  113   0xe7f0b  1      OPC=1343  
                                                                                          
.size _ZNSt8ios_baseD2Ev, .-_ZNSt8ios_baseD2Ev


  .text
  .globl _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E
  .type _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E, @function

#! file-offset 0xa46c0
#! rip-offset  0x646c0
#! capacity    192 bytes

# Text                                                                      #  Line  RIP      Bytes  Opcode    
._ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E:      #        0x646c0  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                                    #  1     0x646c0  5      OPC=1138  
  movl %edi, %ebx                                                           #  2     0x646c5  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                                     #  3     0x646c7  5      OPC=1138  
  movl %ebx, %edi                                                           #  4     0x646cc  2      OPC=1157  
  subl $0x18, %esp                                                          #  5     0x646ce  3      OPC=2384  
  addq %r15, %rsp                                                           #  6     0x646d1  3      OPC=72    
  movl %esi, %r12d                                                          #  7     0x646d4  3      OPC=1157  
  nop                                                                       #  8     0x646d7  1      OPC=1343  
  nop                                                                       #  9     0x646d8  1      OPC=1343  
  nop                                                                       #  10    0x646d9  1      OPC=1343  
  nop                                                                       #  11    0x646da  1      OPC=1343  
  callq ._ZNSt8ios_base7_M_initEv                                           #  12    0x646db  5      OPC=260   
  leal 0x6c(%rbx), %esi                                                     #  13    0x646e0  3      OPC=1066  
  movl %ebx, %edi                                                           #  14    0x646e3  2      OPC=1157  
  nop                                                                       #  15    0x646e5  1      OPC=1343  
  nop                                                                       #  16    0x646e6  1      OPC=1343  
  nop                                                                       #  17    0x646e7  1      OPC=1343  
  nop                                                                       #  18    0x646e8  1      OPC=1343  
  nop                                                                       #  19    0x646e9  1      OPC=1343  
  nop                                                                       #  20    0x646ea  1      OPC=1343  
  nop                                                                       #  21    0x646eb  1      OPC=1343  
  nop                                                                       #  22    0x646ec  1      OPC=1343  
  nop                                                                       #  23    0x646ed  1      OPC=1343  
  nop                                                                       #  24    0x646ee  1      OPC=1343  
  nop                                                                       #  25    0x646ef  1      OPC=1343  
  nop                                                                       #  26    0x646f0  1      OPC=1343  
  nop                                                                       #  27    0x646f1  1      OPC=1343  
  nop                                                                       #  28    0x646f2  1      OPC=1343  
  nop                                                                       #  29    0x646f3  1      OPC=1343  
  nop                                                                       #  30    0x646f4  1      OPC=1343  
  nop                                                                       #  31    0x646f5  1      OPC=1343  
  nop                                                                       #  32    0x646f6  1      OPC=1343  
  nop                                                                       #  33    0x646f7  1      OPC=1343  
  nop                                                                       #  34    0x646f8  1      OPC=1343  
  nop                                                                       #  35    0x646f9  1      OPC=1343  
  nop                                                                       #  36    0x646fa  1      OPC=1343  
  callq ._ZNSt9basic_iosIwSt11char_traitsIwEE15_M_cache_localeERKSt6locale  #  37    0x646fb  5      OPC=260   
  xorl %eax, %eax                                                           #  38    0x64700  2      OPC=3758  
  testl %r12d, %r12d                                                        #  39    0x64702  3      OPC=2436  
  movl %ebx, %ebx                                                           #  40    0x64705  2      OPC=1157  
  movl %r12d, 0x7c(%r15,%rbx,1)                                             #  41    0x64707  5      OPC=1136  
  sete %al                                                                  #  42    0x6470c  3      OPC=2178  
  movl %ebx, %ebx                                                           #  43    0x6470f  2      OPC=1157  
  movl $0x0, 0x74(%r15,%rbx,1)                                              #  44    0x64711  9      OPC=1135  
  nop                                                                       #  45    0x6471a  1      OPC=1343  
  nop                                                                       #  46    0x6471b  1      OPC=1343  
  nop                                                                       #  47    0x6471c  1      OPC=1343  
  nop                                                                       #  48    0x6471d  1      OPC=1343  
  nop                                                                       #  49    0x6471e  1      OPC=1343  
  nop                                                                       #  50    0x6471f  1      OPC=1343  
  movl %ebx, %ebx                                                           #  51    0x64720  2      OPC=1157  
  movb $0x0, 0x78(%r15,%rbx,1)                                              #  52    0x64722  6      OPC=1140  
  movl %ebx, %ebx                                                           #  53    0x64728  2      OPC=1157  
  movl $0x0, 0x70(%r15,%rbx,1)                                              #  54    0x6472a  9      OPC=1135  
  movl %ebx, %ebx                                                           #  55    0x64733  2      OPC=1157  
  movl $0x0, 0x10(%r15,%rbx,1)                                              #  56    0x64735  9      OPC=1135  
  xchgw %ax, %ax                                                            #  57    0x6473e  2      OPC=3700  
  movl %ebx, %ebx                                                           #  58    0x64740  2      OPC=1157  
  movl %eax, 0x14(%r15,%rbx,1)                                              #  59    0x64742  5      OPC=1136  
  movq 0x10(%rsp), %r12                                                     #  60    0x64747  5      OPC=1161  
  movq 0x8(%rsp), %rbx                                                      #  61    0x6474c  5      OPC=1161  
  addl $0x18, %esp                                                          #  62    0x64751  3      OPC=65    
  addq %r15, %rsp                                                           #  63    0x64754  3      OPC=72    
  popq %r11                                                                 #  64    0x64757  2      OPC=1694  
  nop                                                                       #  65    0x64759  1      OPC=1343  
  nop                                                                       #  66    0x6475a  1      OPC=1343  
  nop                                                                       #  67    0x6475b  1      OPC=1343  
  nop                                                                       #  68    0x6475c  1      OPC=1343  
  nop                                                                       #  69    0x6475d  1      OPC=1343  
  nop                                                                       #  70    0x6475e  1      OPC=1343  
  nop                                                                       #  71    0x6475f  1      OPC=1343  
  andl $0xffffffe0, %r11d                                                   #  72    0x64760  7      OPC=131   
  nop                                                                       #  73    0x64767  1      OPC=1343  
  nop                                                                       #  74    0x64768  1      OPC=1343  
  nop                                                                       #  75    0x64769  1      OPC=1343  
  nop                                                                       #  76    0x6476a  1      OPC=1343  
  addq %r15, %r11                                                           #  77    0x6476b  3      OPC=72    
  jmpq %r11                                                                 #  78    0x6476e  3      OPC=928   
  nop                                                                       #  79    0x64771  1      OPC=1343  
  nop                                                                       #  80    0x64772  1      OPC=1343  
  nop                                                                       #  81    0x64773  1      OPC=1343  
  nop                                                                       #  82    0x64774  1      OPC=1343  
  nop                                                                       #  83    0x64775  1      OPC=1343  
  nop                                                                       #  84    0x64776  1      OPC=1343  
  nop                                                                       #  85    0x64777  1      OPC=1343  
  nop                                                                       #  86    0x64778  1      OPC=1343  
  nop                                                                       #  87    0x64779  1      OPC=1343  
  nop                                                                       #  88    0x6477a  1      OPC=1343  
  nop                                                                       #  89    0x6477b  1      OPC=1343  
  nop                                                                       #  90    0x6477c  1      OPC=1343  
  nop                                                                       #  91    0x6477d  1      OPC=1343  
  nop                                                                       #  92    0x6477e  1      OPC=1343  
  nop                                                                       #  93    0x6477f  1      OPC=1343  
  nop                                                                       #  94    0x64780  1      OPC=1343  
  nop                                                                       #  95    0x64781  1      OPC=1343  
  nop                                                                       #  96    0x64782  1      OPC=1343  
  nop                                                                       #  97    0x64783  1      OPC=1343  
  nop                                                                       #  98    0x64784  1      OPC=1343  
  nop                                                                       #  99    0x64785  1      OPC=1343  
  nop                                                                       #  100   0x64786  1      OPC=1343  
                                                                                                               
.size _ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E, .-_ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E


  .text
  .globl _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv
  .type _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, @function

#! file-offset 0x12a5e0
#! rip-offset  0xea5e0
#! capacity    192 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv:  #        0xea5e0  0      OPC=0     
  pushq %rbx                                                               #  1     0xea5e0  1      OPC=1861  
  movl %edi, %ebx                                                          #  2     0xea5e1  2      OPC=1157  
  movl %ebx, %ebx                                                          #  3     0xea5e3  2      OPC=1157  
  cmpb $0x0, 0x60(%r15,%rbx,1)                                             #  4     0xea5e5  6      OPC=461   
  je .L_ea620                                                              #  5     0xea5eb  6      OPC=893   
  nop                                                                      #  6     0xea5f1  1      OPC=1343  
  nop                                                                      #  7     0xea5f2  1      OPC=1343  
  movl %ebx, %ebx                                                          #  8     0xea5f3  2      OPC=1157  
  movl 0x58(%r15,%rbx,1), %edi                                             #  9     0xea5f5  5      OPC=1156  
  testq %rdi, %rdi                                                         #  10    0xea5fa  3      OPC=2438  
  je .L_ea600                                                              #  11    0xea5fd  6      OPC=893   
  nop                                                                      #  12    0xea603  1      OPC=1343  
  nop                                                                      #  13    0xea604  1      OPC=1343  
  xchgw %ax, %ax                                                           #  14    0xea605  2      OPC=3700  
  callq ._ZdaPv                                                            #  15    0xea607  5      OPC=260   
.L_ea600:                                                                  #        0xea60c  0      OPC=0     
  movl %ebx, %ebx                                                          #  16    0xea60c  2      OPC=1157  
  movl $0x0, 0x58(%r15,%rbx,1)                                             #  17    0xea60e  9      OPC=1135  
  movl %ebx, %ebx                                                          #  18    0xea617  2      OPC=1157  
  movb $0x0, 0x60(%r15,%rbx,1)                                             #  19    0xea619  6      OPC=1140  
  nop                                                                      #  20    0xea61f  1      OPC=1343  
  nop                                                                      #  21    0xea620  1      OPC=1343  
  nop                                                                      #  22    0xea621  1      OPC=1343  
  nop                                                                      #  23    0xea622  1      OPC=1343  
  nop                                                                      #  24    0xea623  1      OPC=1343  
  nop                                                                      #  25    0xea624  1      OPC=1343  
  nop                                                                      #  26    0xea625  1      OPC=1343  
  nop                                                                      #  27    0xea626  1      OPC=1343  
  nop                                                                      #  28    0xea627  1      OPC=1343  
  nop                                                                      #  29    0xea628  1      OPC=1343  
  nop                                                                      #  30    0xea629  1      OPC=1343  
  nop                                                                      #  31    0xea62a  1      OPC=1343  
  nop                                                                      #  32    0xea62b  1      OPC=1343  
.L_ea620:                                                                  #        0xea62c  0      OPC=0     
  movl %ebx, %ebx                                                          #  33    0xea62c  2      OPC=1157  
  movl 0x74(%r15,%rbx,1), %edi                                             #  34    0xea62e  5      OPC=1156  
  testq %rdi, %rdi                                                         #  35    0xea633  3      OPC=2438  
  je .L_ea640                                                              #  36    0xea636  6      OPC=893   
  nop                                                                      #  37    0xea63c  1      OPC=1343  
  nop                                                                      #  38    0xea63d  1      OPC=1343  
  nop                                                                      #  39    0xea63e  1      OPC=1343  
  nop                                                                      #  40    0xea63f  1      OPC=1343  
  nop                                                                      #  41    0xea640  1      OPC=1343  
  nop                                                                      #  42    0xea641  1      OPC=1343  
  nop                                                                      #  43    0xea642  1      OPC=1343  
  nop                                                                      #  44    0xea643  1      OPC=1343  
  nop                                                                      #  45    0xea644  1      OPC=1343  
  nop                                                                      #  46    0xea645  1      OPC=1343  
  nop                                                                      #  47    0xea646  1      OPC=1343  
  nop                                                                      #  48    0xea647  1      OPC=1343  
  nop                                                                      #  49    0xea648  1      OPC=1343  
  nop                                                                      #  50    0xea649  1      OPC=1343  
  nop                                                                      #  51    0xea64a  1      OPC=1343  
  nop                                                                      #  52    0xea64b  1      OPC=1343  
  nop                                                                      #  53    0xea64c  1      OPC=1343  
  callq ._ZdaPv                                                            #  54    0xea64d  5      OPC=260   
.L_ea640:                                                                  #        0xea652  0      OPC=0     
  movl %ebx, %ebx                                                          #  55    0xea652  2      OPC=1157  
  movl $0x0, 0x74(%r15,%rbx,1)                                             #  56    0xea654  9      OPC=1135  
  movl %ebx, %ebx                                                          #  57    0xea65d  2      OPC=1157  
  movl $0x0, 0x78(%r15,%rbx,1)                                             #  58    0xea65f  9      OPC=1135  
  nop                                                                      #  59    0xea668  1      OPC=1343  
  nop                                                                      #  60    0xea669  1      OPC=1343  
  nop                                                                      #  61    0xea66a  1      OPC=1343  
  nop                                                                      #  62    0xea66b  1      OPC=1343  
  nop                                                                      #  63    0xea66c  1      OPC=1343  
  nop                                                                      #  64    0xea66d  1      OPC=1343  
  nop                                                                      #  65    0xea66e  1      OPC=1343  
  nop                                                                      #  66    0xea66f  1      OPC=1343  
  nop                                                                      #  67    0xea670  1      OPC=1343  
  nop                                                                      #  68    0xea671  1      OPC=1343  
  movl %ebx, %ebx                                                          #  69    0xea672  2      OPC=1157  
  movl $0x0, 0x7c(%r15,%rbx,1)                                             #  70    0xea674  9      OPC=1135  
  movl %ebx, %ebx                                                          #  71    0xea67d  2      OPC=1157  
  movl $0x0, 0x80(%r15,%rbx,1)                                             #  72    0xea67f  12     OPC=1135  
  popq %rbx                                                                #  73    0xea68b  1      OPC=1694  
  popq %r11                                                                #  74    0xea68c  2      OPC=1694  
  nop                                                                      #  75    0xea68e  1      OPC=1343  
  nop                                                                      #  76    0xea68f  1      OPC=1343  
  nop                                                                      #  77    0xea690  1      OPC=1343  
  nop                                                                      #  78    0xea691  1      OPC=1343  
  andl $0xffffffe0, %r11d                                                  #  79    0xea692  7      OPC=131   
  nop                                                                      #  80    0xea699  1      OPC=1343  
  nop                                                                      #  81    0xea69a  1      OPC=1343  
  nop                                                                      #  82    0xea69b  1      OPC=1343  
  nop                                                                      #  83    0xea69c  1      OPC=1343  
  addq %r15, %r11                                                          #  84    0xea69d  3      OPC=72    
  jmpq %r11                                                                #  85    0xea6a0  3      OPC=928   
  nop                                                                      #  86    0xea6a3  1      OPC=1343  
  nop                                                                      #  87    0xea6a4  1      OPC=1343  
  nop                                                                      #  88    0xea6a5  1      OPC=1343  
  nop                                                                      #  89    0xea6a6  1      OPC=1343  
  nop                                                                      #  90    0xea6a7  1      OPC=1343  
  nop                                                                      #  91    0xea6a8  1      OPC=1343  
  nop                                                                      #  92    0xea6a9  1      OPC=1343  
  nop                                                                      #  93    0xea6aa  1      OPC=1343  
  nop                                                                      #  94    0xea6ab  1      OPC=1343  
  nop                                                                      #  95    0xea6ac  1      OPC=1343  
  nop                                                                      #  96    0xea6ad  1      OPC=1343  
  nop                                                                      #  97    0xea6ae  1      OPC=1343  
  nop                                                                      #  98    0xea6af  1      OPC=1343  
  nop                                                                      #  99    0xea6b0  1      OPC=1343  
  nop                                                                      #  100   0xea6b1  1      OPC=1343  
  nop                                                                      #  101   0xea6b2  1      OPC=1343  
  nop                                                                      #  102   0xea6b3  1      OPC=1343  
  nop                                                                      #  103   0xea6b4  1      OPC=1343  
  nop                                                                      #  104   0xea6b5  1      OPC=1343  
  nop                                                                      #  105   0xea6b6  1      OPC=1343  
  nop                                                                      #  106   0xea6b7  1      OPC=1343  
  nop                                                                      #  107   0xea6b8  1      OPC=1343  
                                                                                                              
.size _ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv, .-_ZNSt13basic_filebufIcSt11char_traitsIcEE26_M_destroy_internal_bufferEv


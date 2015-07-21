  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4rendEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, @function

#! file-offset 0x119c40
#! rip-offset  0xd9c40
#! capacity    160 bytes

# Text                                                    #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE4rendEv:                  #        0xd9c40  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                  #  1     0xd9c40  5      OPC=1138  
  movl %esi, %ebx                                         #  2     0xd9c45  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                   #  3     0xd9c47  5      OPC=1138  
  subl $0x18, %esp                                        #  4     0xd9c4c  3      OPC=2384  
  addq %r15, %rsp                                         #  5     0xd9c4f  3      OPC=72    
  movl %ebx, %ebx                                         #  6     0xd9c52  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  7     0xd9c54  4      OPC=1156  
  movl %edi, %r12d                                        #  8     0xd9c58  3      OPC=1157  
  leal -0xc(%rax), %edx                                   #  9     0xd9c5b  3      OPC=1066  
  xchgw %ax, %ax                                          #  10    0xd9c5e  2      OPC=3700  
  movl %edx, %edx                                         #  11    0xd9c60  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %r8d                             #  12    0xd9c62  5      OPC=1156  
  testl %r8d, %r8d                                        #  13    0xd9c67  3      OPC=2436  
  js .L_d9ca0                                             #  14    0xd9c6a  6      OPC=1043  
  nop                                                     #  15    0xd9c70  1      OPC=1343  
  nop                                                     #  16    0xd9c71  1      OPC=1343  
  movl %ebx, %edi                                         #  17    0xd9c72  2      OPC=1157  
  nop                                                     #  18    0xd9c74  1      OPC=1343  
  nop                                                     #  19    0xd9c75  1      OPC=1343  
  nop                                                     #  20    0xd9c76  1      OPC=1343  
  nop                                                     #  21    0xd9c77  1      OPC=1343  
  nop                                                     #  22    0xd9c78  1      OPC=1343  
  nop                                                     #  23    0xd9c79  1      OPC=1343  
  nop                                                     #  24    0xd9c7a  1      OPC=1343  
  nop                                                     #  25    0xd9c7b  1      OPC=1343  
  nop                                                     #  26    0xd9c7c  1      OPC=1343  
  nop                                                     #  27    0xd9c7d  1      OPC=1343  
  nop                                                     #  28    0xd9c7e  1      OPC=1343  
  nop                                                     #  29    0xd9c7f  1      OPC=1343  
  nop                                                     #  30    0xd9c80  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  31    0xd9c81  5      OPC=260   
  movl %ebx, %ebx                                         #  32    0xd9c86  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                #  33    0xd9c88  4      OPC=1156  
  nop                                                     #  34    0xd9c8c  1      OPC=1343  
  nop                                                     #  35    0xd9c8d  1      OPC=1343  
  nop                                                     #  36    0xd9c8e  1      OPC=1343  
  nop                                                     #  37    0xd9c8f  1      OPC=1343  
  nop                                                     #  38    0xd9c90  1      OPC=1343  
  nop                                                     #  39    0xd9c91  1      OPC=1343  
  nop                                                     #  40    0xd9c92  1      OPC=1343  
  nop                                                     #  41    0xd9c93  1      OPC=1343  
  nop                                                     #  42    0xd9c94  1      OPC=1343  
  nop                                                     #  43    0xd9c95  1      OPC=1343  
  nop                                                     #  44    0xd9c96  1      OPC=1343  
  nop                                                     #  45    0xd9c97  1      OPC=1343  
  nop                                                     #  46    0xd9c98  1      OPC=1343  
  nop                                                     #  47    0xd9c99  1      OPC=1343  
  nop                                                     #  48    0xd9c9a  1      OPC=1343  
  nop                                                     #  49    0xd9c9b  1      OPC=1343  
  nop                                                     #  50    0xd9c9c  1      OPC=1343  
  nop                                                     #  51    0xd9c9d  1      OPC=1343  
  nop                                                     #  52    0xd9c9e  1      OPC=1343  
  nop                                                     #  53    0xd9c9f  1      OPC=1343  
  nop                                                     #  54    0xd9ca0  1      OPC=1343  
  nop                                                     #  55    0xd9ca1  1      OPC=1343  
  nop                                                     #  56    0xd9ca2  1      OPC=1343  
  nop                                                     #  57    0xd9ca3  1      OPC=1343  
  nop                                                     #  58    0xd9ca4  1      OPC=1343  
  nop                                                     #  59    0xd9ca5  1      OPC=1343  
.L_d9ca0:                                                 #        0xd9ca6  0      OPC=0     
  movl %r12d, %r12d                                       #  60    0xd9ca6  3      OPC=1157  
  movl %eax, (%r15,%r12,1)                                #  61    0xd9ca9  4      OPC=1136  
  movq 0x8(%rsp), %rbx                                    #  62    0xd9cad  5      OPC=1161  
  movl %r12d, %eax                                        #  63    0xd9cb2  3      OPC=1157  
  movq 0x10(%rsp), %r12                                   #  64    0xd9cb5  5      OPC=1161  
  addl $0x18, %esp                                        #  65    0xd9cba  3      OPC=65    
  addq %r15, %rsp                                         #  66    0xd9cbd  3      OPC=72    
  popq %r11                                               #  67    0xd9cc0  2      OPC=1694  
  nop                                                     #  68    0xd9cc2  1      OPC=1343  
  nop                                                     #  69    0xd9cc3  1      OPC=1343  
  nop                                                     #  70    0xd9cc4  1      OPC=1343  
  nop                                                     #  71    0xd9cc5  1      OPC=1343  
  andl $0xffffffe0, %r11d                                 #  72    0xd9cc6  7      OPC=131   
  nop                                                     #  73    0xd9ccd  1      OPC=1343  
  nop                                                     #  74    0xd9cce  1      OPC=1343  
  nop                                                     #  75    0xd9ccf  1      OPC=1343  
  nop                                                     #  76    0xd9cd0  1      OPC=1343  
  addq %r15, %r11                                         #  77    0xd9cd1  3      OPC=72    
  jmpq %r11                                               #  78    0xd9cd4  3      OPC=928   
  nop                                                     #  79    0xd9cd7  1      OPC=1343  
  nop                                                     #  80    0xd9cd8  1      OPC=1343  
  nop                                                     #  81    0xd9cd9  1      OPC=1343  
  nop                                                     #  82    0xd9cda  1      OPC=1343  
  nop                                                     #  83    0xd9cdb  1      OPC=1343  
  nop                                                     #  84    0xd9cdc  1      OPC=1343  
  nop                                                     #  85    0xd9cdd  1      OPC=1343  
  nop                                                     #  86    0xd9cde  1      OPC=1343  
  nop                                                     #  87    0xd9cdf  1      OPC=1343  
  nop                                                     #  88    0xd9ce0  1      OPC=1343  
  nop                                                     #  89    0xd9ce1  1      OPC=1343  
  nop                                                     #  90    0xd9ce2  1      OPC=1343  
  nop                                                     #  91    0xd9ce3  1      OPC=1343  
  nop                                                     #  92    0xd9ce4  1      OPC=1343  
  nop                                                     #  93    0xd9ce5  1      OPC=1343  
  nop                                                     #  94    0xd9ce6  1      OPC=1343  
  nop                                                     #  95    0xd9ce7  1      OPC=1343  
  nop                                                     #  96    0xd9ce8  1      OPC=1343  
  nop                                                     #  97    0xd9ce9  1      OPC=1343  
  nop                                                     #  98    0xd9cea  1      OPC=1343  
  nop                                                     #  99    0xd9ceb  1      OPC=1343  
  nop                                                     #  100   0xd9cec  1      OPC=1343  
                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE4rendEv, .-_ZNSbIwSt11char_traitsIwESaIwEE4rendEv


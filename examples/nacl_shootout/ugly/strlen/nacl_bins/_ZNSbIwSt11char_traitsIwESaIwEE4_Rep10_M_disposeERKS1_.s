  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, @function

#! file-offset 0x115480
#! rip-offset  0xd5480
#! capacity    96 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_:        #        0xd5480  0      OPC=0     
  movl %edi, %edi                                               #  1     0xd5480  2      OPC=1157  
  movl %esi, %esi                                               #  2     0xd5482  2      OPC=1157  
  cmpl $0x10073620, %edi                                        #  3     0xd5484  6      OPC=469   
  jne .L_d54c0                                                  #  4     0xd548a  6      OPC=963   
  nop                                                           #  5     0xd5490  1      OPC=1343  
  nop                                                           #  6     0xd5491  1      OPC=1343  
  nop                                                           #  7     0xd5492  1      OPC=1343  
  nop                                                           #  8     0xd5493  1      OPC=1343  
  nop                                                           #  9     0xd5494  1      OPC=1343  
  nop                                                           #  10    0xd5495  1      OPC=1343  
  nop                                                           #  11    0xd5496  1      OPC=1343  
  nop                                                           #  12    0xd5497  1      OPC=1343  
  nop                                                           #  13    0xd5498  1      OPC=1343  
  nop                                                           #  14    0xd5499  1      OPC=1343  
  nop                                                           #  15    0xd549a  1      OPC=1343  
  nop                                                           #  16    0xd549b  1      OPC=1343  
  nop                                                           #  17    0xd549c  1      OPC=1343  
  nop                                                           #  18    0xd549d  1      OPC=1343  
  nop                                                           #  19    0xd549e  1      OPC=1343  
  nop                                                           #  20    0xd549f  1      OPC=1343  
  nop                                                           #  21    0xd54a0  1      OPC=1343  
  nop                                                           #  22    0xd54a1  1      OPC=1343  
  nop                                                           #  23    0xd54a2  1      OPC=1343  
  nop                                                           #  24    0xd54a3  1      OPC=1343  
  nop                                                           #  25    0xd54a4  1      OPC=1343  
  nop                                                           #  26    0xd54a5  1      OPC=1343  
.L_d54a0:                                                       #        0xd54a6  0      OPC=0     
  popq %r11                                                     #  27    0xd54a6  2      OPC=1694  
  andl $0xffffffe0, %r11d                                       #  28    0xd54a8  7      OPC=131   
  nop                                                           #  29    0xd54af  1      OPC=1343  
  nop                                                           #  30    0xd54b0  1      OPC=1343  
  nop                                                           #  31    0xd54b1  1      OPC=1343  
  nop                                                           #  32    0xd54b2  1      OPC=1343  
  addq %r15, %r11                                               #  33    0xd54b3  3      OPC=72    
  jmpq %r11                                                     #  34    0xd54b6  3      OPC=928   
  nop                                                           #  35    0xd54b9  1      OPC=1343  
  nop                                                           #  36    0xd54ba  1      OPC=1343  
  nop                                                           #  37    0xd54bb  1      OPC=1343  
  nop                                                           #  38    0xd54bc  1      OPC=1343  
  nop                                                           #  39    0xd54bd  1      OPC=1343  
  nop                                                           #  40    0xd54be  1      OPC=1343  
  nop                                                           #  41    0xd54bf  1      OPC=1343  
  nop                                                           #  42    0xd54c0  1      OPC=1343  
  nop                                                           #  43    0xd54c1  1      OPC=1343  
  nop                                                           #  44    0xd54c2  1      OPC=1343  
  nop                                                           #  45    0xd54c3  1      OPC=1343  
  nop                                                           #  46    0xd54c4  1      OPC=1343  
  nop                                                           #  47    0xd54c5  1      OPC=1343  
  nop                                                           #  48    0xd54c6  1      OPC=1343  
  nop                                                           #  49    0xd54c7  1      OPC=1343  
  nop                                                           #  50    0xd54c8  1      OPC=1343  
  nop                                                           #  51    0xd54c9  1      OPC=1343  
  nop                                                           #  52    0xd54ca  1      OPC=1343  
  nop                                                           #  53    0xd54cb  1      OPC=1343  
  nop                                                           #  54    0xd54cc  1      OPC=1343  
.L_d54c0:                                                       #        0xd54cd  0      OPC=0     
  movl %edi, %edi                                               #  55    0xd54cd  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                                   #  56    0xd54cf  5      OPC=1156  
  leal -0x1(%rax), %edx                                         #  57    0xd54d4  3      OPC=1066  
  testl %eax, %eax                                              #  58    0xd54d7  2      OPC=2436  
  movl %edi, %edi                                               #  59    0xd54d9  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)                                   #  60    0xd54db  5      OPC=1136  
  jg .L_d54a0                                                   #  61    0xd54e0  6      OPC=901   
  nop                                                           #  62    0xd54e6  1      OPC=1343  
  nop                                                           #  63    0xd54e7  1      OPC=1343  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  64    0xd54e8  5      OPC=930   
  nop                                                           #  65    0xd54ed  1      OPC=1343  
  nop                                                           #  66    0xd54ee  1      OPC=1343  
  nop                                                           #  67    0xd54ef  1      OPC=1343  
  nop                                                           #  68    0xd54f0  1      OPC=1343  
  nop                                                           #  69    0xd54f1  1      OPC=1343  
  nop                                                           #  70    0xd54f2  1      OPC=1343  
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_disposeERKS1_


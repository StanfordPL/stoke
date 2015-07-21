  .text
  .globl _ZNKSt5ctypeIwE9do_narrowEwc
  .type _ZNKSt5ctypeIwE9do_narrowEwc, @function

#! file-offset 0x13c6a0
#! rip-offset  0xfc6a0
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIwE9do_narrowEwc:   #        0xfc6a0  0      OPC=0     
  cmpl $0x7f, %esi               #  1     0xfc6a0  3      OPC=470   
  pushq %rbx                     #  2     0xfc6a3  1      OPC=1861  
  movl %edi, %edi                #  3     0xfc6a4  2      OPC=1157  
  movl %edx, %ebx                #  4     0xfc6a6  2      OPC=1157  
  ja .L_fc6c0                    #  5     0xfc6a8  6      OPC=863   
  nop                            #  6     0xfc6ae  1      OPC=1343  
  nop                            #  7     0xfc6af  1      OPC=1343  
  movl %edi, %edi                #  8     0xfc6b0  2      OPC=1157  
  cmpb $0x0, 0xc(%r15,%rdi,1)    #  9     0xfc6b2  6      OPC=461   
  jne .L_fc700                   #  10    0xfc6b8  6      OPC=963   
  nop                            #  11    0xfc6be  1      OPC=1343  
  nop                            #  12    0xfc6bf  1      OPC=1343  
  nop                            #  13    0xfc6c0  1      OPC=1343  
  nop                            #  14    0xfc6c1  1      OPC=1343  
  nop                            #  15    0xfc6c2  1      OPC=1343  
  nop                            #  16    0xfc6c3  1      OPC=1343  
  nop                            #  17    0xfc6c4  1      OPC=1343  
  nop                            #  18    0xfc6c5  1      OPC=1343  
  nop                            #  19    0xfc6c6  1      OPC=1343  
  nop                            #  20    0xfc6c7  1      OPC=1343  
  nop                            #  21    0xfc6c8  1      OPC=1343  
  nop                            #  22    0xfc6c9  1      OPC=1343  
  nop                            #  23    0xfc6ca  1      OPC=1343  
  nop                            #  24    0xfc6cb  1      OPC=1343  
.L_fc6c0:                        #        0xfc6cc  0      OPC=0     
  movl %esi, %edi                #  25    0xfc6cc  2      OPC=1157  
  nop                            #  26    0xfc6ce  1      OPC=1343  
  nop                            #  27    0xfc6cf  1      OPC=1343  
  nop                            #  28    0xfc6d0  1      OPC=1343  
  nop                            #  29    0xfc6d1  1      OPC=1343  
  nop                            #  30    0xfc6d2  1      OPC=1343  
  nop                            #  31    0xfc6d3  1      OPC=1343  
  nop                            #  32    0xfc6d4  1      OPC=1343  
  nop                            #  33    0xfc6d5  1      OPC=1343  
  nop                            #  34    0xfc6d6  1      OPC=1343  
  nop                            #  35    0xfc6d7  1      OPC=1343  
  nop                            #  36    0xfc6d8  1      OPC=1343  
  nop                            #  37    0xfc6d9  1      OPC=1343  
  nop                            #  38    0xfc6da  1      OPC=1343  
  nop                            #  39    0xfc6db  1      OPC=1343  
  nop                            #  40    0xfc6dc  1      OPC=1343  
  nop                            #  41    0xfc6dd  1      OPC=1343  
  nop                            #  42    0xfc6de  1      OPC=1343  
  nop                            #  43    0xfc6df  1      OPC=1343  
  nop                            #  44    0xfc6e0  1      OPC=1343  
  nop                            #  45    0xfc6e1  1      OPC=1343  
  nop                            #  46    0xfc6e2  1      OPC=1343  
  nop                            #  47    0xfc6e3  1      OPC=1343  
  nop                            #  48    0xfc6e4  1      OPC=1343  
  nop                            #  49    0xfc6e5  1      OPC=1343  
  nop                            #  50    0xfc6e6  1      OPC=1343  
  callq .wctob                   #  51    0xfc6e7  5      OPC=260   
  cmpl $0xffffffff, %eax         #  52    0xfc6ec  6      OPC=469   
  nop                            #  53    0xfc6f2  1      OPC=1343  
  nop                            #  54    0xfc6f3  1      OPC=1343  
  nop                            #  55    0xfc6f4  1      OPC=1343  
  cmovnel %eax, %ebx             #  56    0xfc6f5  3      OPC=362   
  movl %ebx, %eax                #  57    0xfc6f8  2      OPC=1157  
  popq %rbx                      #  58    0xfc6fa  1      OPC=1694  
  popq %r11                      #  59    0xfc6fb  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  60    0xfc6fd  7      OPC=131   
  nop                            #  61    0xfc704  1      OPC=1343  
  nop                            #  62    0xfc705  1      OPC=1343  
  nop                            #  63    0xfc706  1      OPC=1343  
  nop                            #  64    0xfc707  1      OPC=1343  
  addq %r15, %r11                #  65    0xfc708  3      OPC=72    
  jmpq %r11                      #  66    0xfc70b  3      OPC=928   
  nop                            #  67    0xfc70e  1      OPC=1343  
  nop                            #  68    0xfc70f  1      OPC=1343  
  nop                            #  69    0xfc710  1      OPC=1343  
  nop                            #  70    0xfc711  1      OPC=1343  
  nop                            #  71    0xfc712  1      OPC=1343  
  nop                            #  72    0xfc713  1      OPC=1343  
  nop                            #  73    0xfc714  1      OPC=1343  
  nop                            #  74    0xfc715  1      OPC=1343  
  nop                            #  75    0xfc716  1      OPC=1343  
  nop                            #  76    0xfc717  1      OPC=1343  
  nop                            #  77    0xfc718  1      OPC=1343  
.L_fc700:                        #        0xfc719  0      OPC=0     
  movslq %esi, %rsi              #  78    0xfc719  3      OPC=1289  
  addq %rsi, %rdi                #  79    0xfc71c  3      OPC=72    
  movl %edi, %edi                #  80    0xfc71f  2      OPC=1157  
  movzbl 0xd(%r15,%rdi,1), %ebx  #  81    0xfc721  6      OPC=1302  
  movl %ebx, %eax                #  82    0xfc727  2      OPC=1157  
  popq %rbx                      #  83    0xfc729  1      OPC=1694  
  popq %r11                      #  84    0xfc72a  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  85    0xfc72c  7      OPC=131   
  nop                            #  86    0xfc733  1      OPC=1343  
  nop                            #  87    0xfc734  1      OPC=1343  
  nop                            #  88    0xfc735  1      OPC=1343  
  nop                            #  89    0xfc736  1      OPC=1343  
  addq %r15, %r11                #  90    0xfc737  3      OPC=72    
  jmpq %r11                      #  91    0xfc73a  3      OPC=928   
  nop                            #  92    0xfc73d  1      OPC=1343  
  nop                            #  93    0xfc73e  1      OPC=1343  
  nop                            #  94    0xfc73f  1      OPC=1343  
                                                                    
.size _ZNKSt5ctypeIwE9do_narrowEwc, .-_ZNKSt5ctypeIwE9do_narrowEwc


  .text
  .globl _ZNSt8numpunctIwEC1Ej
  .type _ZNSt8numpunctIwEC1Ej, @function

#! file-offset 0xf6280
#! rip-offset  0xb6280
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIwEC1Ej:                                #        0xb6280  0      OPC=0     
  pushq %rbx                                           #  1     0xb6280  1      OPC=1861  
  xorl %eax, %eax                                      #  2     0xb6281  2      OPC=3758  
  movl %edi, %ebx                                      #  3     0xb6283  2      OPC=1157  
  movl %ebx, %edi                                      #  4     0xb6285  2      OPC=1157  
  subl $0x10, %esp                                     #  5     0xb6287  3      OPC=2384  
  addq %r15, %rsp                                      #  6     0xb628a  3      OPC=72    
  testl %esi, %esi                                     #  7     0xb628d  2      OPC=2436  
  movl %ebx, %ebx                                      #  8     0xb628f  2      OPC=1157  
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb6291  8      OPC=1135  
  setne %al                                            #  10    0xb6299  3      OPC=2208  
  nop                                                  #  11    0xb629c  1      OPC=1343  
  nop                                                  #  12    0xb629d  1      OPC=1343  
  nop                                                  #  13    0xb629e  1      OPC=1343  
  nop                                                  #  14    0xb629f  1      OPC=1343  
  movl %ebx, %ebx                                      #  15    0xb62a0  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb62a2  9      OPC=1135  
  xorl %esi, %esi                                      #  17    0xb62ab  2      OPC=3758  
  movl %ebx, %ebx                                      #  18    0xb62ad  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb62af  5      OPC=1136  
  nop                                                  #  20    0xb62b4  1      OPC=1343  
  nop                                                  #  21    0xb62b5  1      OPC=1343  
  nop                                                  #  22    0xb62b6  1      OPC=1343  
  nop                                                  #  23    0xb62b7  1      OPC=1343  
  nop                                                  #  24    0xb62b8  1      OPC=1343  
  nop                                                  #  25    0xb62b9  1      OPC=1343  
  nop                                                  #  26    0xb62ba  1      OPC=1343  
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb62bb  5      OPC=260   
  addl $0x10, %esp                                     #  28    0xb62c0  3      OPC=65    
  addq %r15, %rsp                                      #  29    0xb62c3  3      OPC=72    
  popq %rbx                                            #  30    0xb62c6  1      OPC=1694  
  popq %r11                                            #  31    0xb62c7  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  32    0xb62c9  7      OPC=131   
  nop                                                  #  33    0xb62d0  1      OPC=1343  
  nop                                                  #  34    0xb62d1  1      OPC=1343  
  nop                                                  #  35    0xb62d2  1      OPC=1343  
  nop                                                  #  36    0xb62d3  1      OPC=1343  
  addq %r15, %r11                                      #  37    0xb62d4  3      OPC=72    
  jmpq %r11                                            #  38    0xb62d7  3      OPC=928   
  nop                                                  #  39    0xb62da  1      OPC=1343  
  nop                                                  #  40    0xb62db  1      OPC=1343  
  nop                                                  #  41    0xb62dc  1      OPC=1343  
  nop                                                  #  42    0xb62dd  1      OPC=1343  
  nop                                                  #  43    0xb62de  1      OPC=1343  
  nop                                                  #  44    0xb62df  1      OPC=1343  
  nop                                                  #  45    0xb62e0  1      OPC=1343  
  nop                                                  #  46    0xb62e1  1      OPC=1343  
  nop                                                  #  47    0xb62e2  1      OPC=1343  
  nop                                                  #  48    0xb62e3  1      OPC=1343  
  nop                                                  #  49    0xb62e4  1      OPC=1343  
  nop                                                  #  50    0xb62e5  1      OPC=1343  
  nop                                                  #  51    0xb62e6  1      OPC=1343  
  movl %ebx, %edi                                      #  52    0xb62e7  2      OPC=1157  
  movl %eax, 0x8(%rsp)                                 #  53    0xb62e9  4      OPC=1136  
  nop                                                  #  54    0xb62ed  1      OPC=1343  
  nop                                                  #  55    0xb62ee  1      OPC=1343  
  nop                                                  #  56    0xb62ef  1      OPC=1343  
  nop                                                  #  57    0xb62f0  1      OPC=1343  
  nop                                                  #  58    0xb62f1  1      OPC=1343  
  nop                                                  #  59    0xb62f2  1      OPC=1343  
  nop                                                  #  60    0xb62f3  1      OPC=1343  
  nop                                                  #  61    0xb62f4  1      OPC=1343  
  nop                                                  #  62    0xb62f5  1      OPC=1343  
  nop                                                  #  63    0xb62f6  1      OPC=1343  
  nop                                                  #  64    0xb62f7  1      OPC=1343  
  nop                                                  #  65    0xb62f8  1      OPC=1343  
  nop                                                  #  66    0xb62f9  1      OPC=1343  
  nop                                                  #  67    0xb62fa  1      OPC=1343  
  nop                                                  #  68    0xb62fb  1      OPC=1343  
  nop                                                  #  69    0xb62fc  1      OPC=1343  
  nop                                                  #  70    0xb62fd  1      OPC=1343  
  nop                                                  #  71    0xb62fe  1      OPC=1343  
  nop                                                  #  72    0xb62ff  1      OPC=1343  
  nop                                                  #  73    0xb6300  1      OPC=1343  
  nop                                                  #  74    0xb6301  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb6302  5      OPC=260   
  movl 0x8(%rsp), %eax                                 #  76    0xb6307  4      OPC=1156  
  movl %eax, %edi                                      #  77    0xb630b  2      OPC=1157  
  nop                                                  #  78    0xb630d  1      OPC=1343  
  nop                                                  #  79    0xb630e  1      OPC=1343  
  nop                                                  #  80    0xb630f  1      OPC=1343  
  nop                                                  #  81    0xb6310  1      OPC=1343  
  nop                                                  #  82    0xb6311  1      OPC=1343  
  nop                                                  #  83    0xb6312  1      OPC=1343  
  nop                                                  #  84    0xb6313  1      OPC=1343  
  nop                                                  #  85    0xb6314  1      OPC=1343  
  nop                                                  #  86    0xb6315  1      OPC=1343  
  nop                                                  #  87    0xb6316  1      OPC=1343  
  nop                                                  #  88    0xb6317  1      OPC=1343  
  nop                                                  #  89    0xb6318  1      OPC=1343  
  nop                                                  #  90    0xb6319  1      OPC=1343  
  nop                                                  #  91    0xb631a  1      OPC=1343  
  nop                                                  #  92    0xb631b  1      OPC=1343  
  nop                                                  #  93    0xb631c  1      OPC=1343  
  nop                                                  #  94    0xb631d  1      OPC=1343  
  nop                                                  #  95    0xb631e  1      OPC=1343  
  nop                                                  #  96    0xb631f  1      OPC=1343  
  nop                                                  #  97    0xb6320  1      OPC=1343  
  nop                                                  #  98    0xb6321  1      OPC=1343  
  callq ._Unwind_Resume                                #  99    0xb6322  5      OPC=260   
                                                                                          
.size _ZNSt8numpunctIwEC1Ej, .-_ZNSt8numpunctIwEC1Ej


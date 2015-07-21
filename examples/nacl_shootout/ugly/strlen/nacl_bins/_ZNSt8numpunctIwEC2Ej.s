  .text
  .globl _ZNSt8numpunctIwEC2Ej
  .type _ZNSt8numpunctIwEC2Ej, @function

#! file-offset 0xf6320
#! rip-offset  0xb6320
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIwEC2Ej:                                #        0xb6320  0      OPC=0     
  pushq %rbx                                           #  1     0xb6320  1      OPC=1861  
  xorl %eax, %eax                                      #  2     0xb6321  2      OPC=3758  
  movl %edi, %ebx                                      #  3     0xb6323  2      OPC=1157  
  movl %ebx, %edi                                      #  4     0xb6325  2      OPC=1157  
  subl $0x10, %esp                                     #  5     0xb6327  3      OPC=2384  
  addq %r15, %rsp                                      #  6     0xb632a  3      OPC=72    
  testl %esi, %esi                                     #  7     0xb632d  2      OPC=2436  
  movl %ebx, %ebx                                      #  8     0xb632f  2      OPC=1157  
  movl $0x1003c228, (%r15,%rbx,1)                      #  9     0xb6331  8      OPC=1135  
  setne %al                                            #  10    0xb6339  3      OPC=2208  
  nop                                                  #  11    0xb633c  1      OPC=1343  
  nop                                                  #  12    0xb633d  1      OPC=1343  
  nop                                                  #  13    0xb633e  1      OPC=1343  
  nop                                                  #  14    0xb633f  1      OPC=1343  
  movl %ebx, %ebx                                      #  15    0xb6340  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0xb6342  9      OPC=1135  
  xorl %esi, %esi                                      #  17    0xb634b  2      OPC=3758  
  movl %ebx, %ebx                                      #  18    0xb634d  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0xb634f  5      OPC=1136  
  nop                                                  #  20    0xb6354  1      OPC=1343  
  nop                                                  #  21    0xb6355  1      OPC=1343  
  nop                                                  #  22    0xb6356  1      OPC=1343  
  nop                                                  #  23    0xb6357  1      OPC=1343  
  nop                                                  #  24    0xb6358  1      OPC=1343  
  nop                                                  #  25    0xb6359  1      OPC=1343  
  nop                                                  #  26    0xb635a  1      OPC=1343  
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  27    0xb635b  5      OPC=260   
  addl $0x10, %esp                                     #  28    0xb6360  3      OPC=65    
  addq %r15, %rsp                                      #  29    0xb6363  3      OPC=72    
  popq %rbx                                            #  30    0xb6366  1      OPC=1694  
  popq %r11                                            #  31    0xb6367  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  32    0xb6369  7      OPC=131   
  nop                                                  #  33    0xb6370  1      OPC=1343  
  nop                                                  #  34    0xb6371  1      OPC=1343  
  nop                                                  #  35    0xb6372  1      OPC=1343  
  nop                                                  #  36    0xb6373  1      OPC=1343  
  addq %r15, %r11                                      #  37    0xb6374  3      OPC=72    
  jmpq %r11                                            #  38    0xb6377  3      OPC=928   
  nop                                                  #  39    0xb637a  1      OPC=1343  
  nop                                                  #  40    0xb637b  1      OPC=1343  
  nop                                                  #  41    0xb637c  1      OPC=1343  
  nop                                                  #  42    0xb637d  1      OPC=1343  
  nop                                                  #  43    0xb637e  1      OPC=1343  
  nop                                                  #  44    0xb637f  1      OPC=1343  
  nop                                                  #  45    0xb6380  1      OPC=1343  
  nop                                                  #  46    0xb6381  1      OPC=1343  
  nop                                                  #  47    0xb6382  1      OPC=1343  
  nop                                                  #  48    0xb6383  1      OPC=1343  
  nop                                                  #  49    0xb6384  1      OPC=1343  
  nop                                                  #  50    0xb6385  1      OPC=1343  
  nop                                                  #  51    0xb6386  1      OPC=1343  
  movl %ebx, %edi                                      #  52    0xb6387  2      OPC=1157  
  movl %eax, 0x8(%rsp)                                 #  53    0xb6389  4      OPC=1136  
  nop                                                  #  54    0xb638d  1      OPC=1343  
  nop                                                  #  55    0xb638e  1      OPC=1343  
  nop                                                  #  56    0xb638f  1      OPC=1343  
  nop                                                  #  57    0xb6390  1      OPC=1343  
  nop                                                  #  58    0xb6391  1      OPC=1343  
  nop                                                  #  59    0xb6392  1      OPC=1343  
  nop                                                  #  60    0xb6393  1      OPC=1343  
  nop                                                  #  61    0xb6394  1      OPC=1343  
  nop                                                  #  62    0xb6395  1      OPC=1343  
  nop                                                  #  63    0xb6396  1      OPC=1343  
  nop                                                  #  64    0xb6397  1      OPC=1343  
  nop                                                  #  65    0xb6398  1      OPC=1343  
  nop                                                  #  66    0xb6399  1      OPC=1343  
  nop                                                  #  67    0xb639a  1      OPC=1343  
  nop                                                  #  68    0xb639b  1      OPC=1343  
  nop                                                  #  69    0xb639c  1      OPC=1343  
  nop                                                  #  70    0xb639d  1      OPC=1343  
  nop                                                  #  71    0xb639e  1      OPC=1343  
  nop                                                  #  72    0xb639f  1      OPC=1343  
  nop                                                  #  73    0xb63a0  1      OPC=1343  
  nop                                                  #  74    0xb63a1  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                        #  75    0xb63a2  5      OPC=260   
  movl 0x8(%rsp), %eax                                 #  76    0xb63a7  4      OPC=1156  
  movl %eax, %edi                                      #  77    0xb63ab  2      OPC=1157  
  nop                                                  #  78    0xb63ad  1      OPC=1343  
  nop                                                  #  79    0xb63ae  1      OPC=1343  
  nop                                                  #  80    0xb63af  1      OPC=1343  
  nop                                                  #  81    0xb63b0  1      OPC=1343  
  nop                                                  #  82    0xb63b1  1      OPC=1343  
  nop                                                  #  83    0xb63b2  1      OPC=1343  
  nop                                                  #  84    0xb63b3  1      OPC=1343  
  nop                                                  #  85    0xb63b4  1      OPC=1343  
  nop                                                  #  86    0xb63b5  1      OPC=1343  
  nop                                                  #  87    0xb63b6  1      OPC=1343  
  nop                                                  #  88    0xb63b7  1      OPC=1343  
  nop                                                  #  89    0xb63b8  1      OPC=1343  
  nop                                                  #  90    0xb63b9  1      OPC=1343  
  nop                                                  #  91    0xb63ba  1      OPC=1343  
  nop                                                  #  92    0xb63bb  1      OPC=1343  
  nop                                                  #  93    0xb63bc  1      OPC=1343  
  nop                                                  #  94    0xb63bd  1      OPC=1343  
  nop                                                  #  95    0xb63be  1      OPC=1343  
  nop                                                  #  96    0xb63bf  1      OPC=1343  
  nop                                                  #  97    0xb63c0  1      OPC=1343  
  nop                                                  #  98    0xb63c1  1      OPC=1343  
  callq ._Unwind_Resume                                #  99    0xb63c2  5      OPC=260   
                                                                                          
.size _ZNSt8numpunctIwEC2Ej, .-_ZNSt8numpunctIwEC2Ej


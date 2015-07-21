  .text
  .globl _ZNSt8numpunctIcEC2EPij
  .type _ZNSt8numpunctIcEC2EPij, @function

#! file-offset 0xbd580
#! rip-offset  0x7d580
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt8numpunctIcEC2EPij:                              #        0x7d580  0      OPC=0     
  pushq %rbx                                           #  1     0x7d580  1      OPC=1861  
  xorl %eax, %eax                                      #  2     0x7d581  2      OPC=3758  
  movl %edi, %ebx                                      #  3     0x7d583  2      OPC=1157  
  movl %esi, %esi                                      #  4     0x7d585  2      OPC=1157  
  movl %ebx, %edi                                      #  5     0x7d587  2      OPC=1157  
  subl $0x10, %esp                                     #  6     0x7d589  3      OPC=2384  
  addq %r15, %rsp                                      #  7     0x7d58c  3      OPC=72    
  testl %edx, %edx                                     #  8     0x7d58f  2      OPC=2436  
  movl %ebx, %ebx                                      #  9     0x7d591  2      OPC=1157  
  movl $0x1003afa8, (%r15,%rbx,1)                      #  10    0x7d593  8      OPC=1135  
  setne %al                                            #  11    0x7d59b  3      OPC=2208  
  xchgw %ax, %ax                                       #  12    0x7d59e  2      OPC=3700  
  movl %ebx, %ebx                                      #  13    0x7d5a0  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rbx,1)                          #  14    0x7d5a2  9      OPC=1135  
  movl %ebx, %ebx                                      #  15    0x7d5ab  2      OPC=1157  
  movl %eax, 0x4(%r15,%rbx,1)                          #  16    0x7d5ad  5      OPC=1136  
  nop                                                  #  17    0x7d5b2  1      OPC=1343  
  nop                                                  #  18    0x7d5b3  1      OPC=1343  
  nop                                                  #  19    0x7d5b4  1      OPC=1343  
  nop                                                  #  20    0x7d5b5  1      OPC=1343  
  nop                                                  #  21    0x7d5b6  1      OPC=1343  
  nop                                                  #  22    0x7d5b7  1      OPC=1343  
  nop                                                  #  23    0x7d5b8  1      OPC=1343  
  nop                                                  #  24    0x7d5b9  1      OPC=1343  
  nop                                                  #  25    0x7d5ba  1      OPC=1343  
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  26    0x7d5bb  5      OPC=260   
  addl $0x10, %esp                                     #  27    0x7d5c0  3      OPC=65    
  addq %r15, %rsp                                      #  28    0x7d5c3  3      OPC=72    
  popq %rbx                                            #  29    0x7d5c6  1      OPC=1694  
  popq %r11                                            #  30    0x7d5c7  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  31    0x7d5c9  7      OPC=131   
  nop                                                  #  32    0x7d5d0  1      OPC=1343  
  nop                                                  #  33    0x7d5d1  1      OPC=1343  
  nop                                                  #  34    0x7d5d2  1      OPC=1343  
  nop                                                  #  35    0x7d5d3  1      OPC=1343  
  addq %r15, %r11                                      #  36    0x7d5d4  3      OPC=72    
  jmpq %r11                                            #  37    0x7d5d7  3      OPC=928   
  nop                                                  #  38    0x7d5da  1      OPC=1343  
  nop                                                  #  39    0x7d5db  1      OPC=1343  
  nop                                                  #  40    0x7d5dc  1      OPC=1343  
  nop                                                  #  41    0x7d5dd  1      OPC=1343  
  nop                                                  #  42    0x7d5de  1      OPC=1343  
  nop                                                  #  43    0x7d5df  1      OPC=1343  
  nop                                                  #  44    0x7d5e0  1      OPC=1343  
  nop                                                  #  45    0x7d5e1  1      OPC=1343  
  nop                                                  #  46    0x7d5e2  1      OPC=1343  
  nop                                                  #  47    0x7d5e3  1      OPC=1343  
  nop                                                  #  48    0x7d5e4  1      OPC=1343  
  nop                                                  #  49    0x7d5e5  1      OPC=1343  
  nop                                                  #  50    0x7d5e6  1      OPC=1343  
  movl %ebx, %edi                                      #  51    0x7d5e7  2      OPC=1157  
  movl %eax, 0x8(%rsp)                                 #  52    0x7d5e9  4      OPC=1136  
  nop                                                  #  53    0x7d5ed  1      OPC=1343  
  nop                                                  #  54    0x7d5ee  1      OPC=1343  
  nop                                                  #  55    0x7d5ef  1      OPC=1343  
  nop                                                  #  56    0x7d5f0  1      OPC=1343  
  nop                                                  #  57    0x7d5f1  1      OPC=1343  
  nop                                                  #  58    0x7d5f2  1      OPC=1343  
  nop                                                  #  59    0x7d5f3  1      OPC=1343  
  nop                                                  #  60    0x7d5f4  1      OPC=1343  
  nop                                                  #  61    0x7d5f5  1      OPC=1343  
  nop                                                  #  62    0x7d5f6  1      OPC=1343  
  nop                                                  #  63    0x7d5f7  1      OPC=1343  
  nop                                                  #  64    0x7d5f8  1      OPC=1343  
  nop                                                  #  65    0x7d5f9  1      OPC=1343  
  nop                                                  #  66    0x7d5fa  1      OPC=1343  
  nop                                                  #  67    0x7d5fb  1      OPC=1343  
  nop                                                  #  68    0x7d5fc  1      OPC=1343  
  nop                                                  #  69    0x7d5fd  1      OPC=1343  
  nop                                                  #  70    0x7d5fe  1      OPC=1343  
  nop                                                  #  71    0x7d5ff  1      OPC=1343  
  nop                                                  #  72    0x7d600  1      OPC=1343  
  nop                                                  #  73    0x7d601  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                        #  74    0x7d602  5      OPC=260   
  movl 0x8(%rsp), %eax                                 #  75    0x7d607  4      OPC=1156  
  movl %eax, %edi                                      #  76    0x7d60b  2      OPC=1157  
  nop                                                  #  77    0x7d60d  1      OPC=1343  
  nop                                                  #  78    0x7d60e  1      OPC=1343  
  nop                                                  #  79    0x7d60f  1      OPC=1343  
  nop                                                  #  80    0x7d610  1      OPC=1343  
  nop                                                  #  81    0x7d611  1      OPC=1343  
  nop                                                  #  82    0x7d612  1      OPC=1343  
  nop                                                  #  83    0x7d613  1      OPC=1343  
  nop                                                  #  84    0x7d614  1      OPC=1343  
  nop                                                  #  85    0x7d615  1      OPC=1343  
  nop                                                  #  86    0x7d616  1      OPC=1343  
  nop                                                  #  87    0x7d617  1      OPC=1343  
  nop                                                  #  88    0x7d618  1      OPC=1343  
  nop                                                  #  89    0x7d619  1      OPC=1343  
  nop                                                  #  90    0x7d61a  1      OPC=1343  
  nop                                                  #  91    0x7d61b  1      OPC=1343  
  nop                                                  #  92    0x7d61c  1      OPC=1343  
  nop                                                  #  93    0x7d61d  1      OPC=1343  
  nop                                                  #  94    0x7d61e  1      OPC=1343  
  nop                                                  #  95    0x7d61f  1      OPC=1343  
  nop                                                  #  96    0x7d620  1      OPC=1343  
  nop                                                  #  97    0x7d621  1      OPC=1343  
  callq ._Unwind_Resume                                #  98    0x7d622  5      OPC=260   
                                                                                          
.size _ZNSt8numpunctIcEC2EPij, .-_ZNSt8numpunctIcEC2EPij


  .text
  .globl _ZNSt16__numpunct_cacheIcED2Ev
  .type _ZNSt16__numpunct_cacheIcED2Ev, @function

#! file-offset 0xbb560
#! rip-offset  0x7b560
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode    
._ZNSt16__numpunct_cacheIcED2Ev:   #        0x7b560  0      OPC=0     
  pushq %rbx                       #  1     0x7b560  1      OPC=1861  
  movl %edi, %ebx                  #  2     0x7b561  2      OPC=1157  
  movl %ebx, %ebx                  #  3     0x7b563  2      OPC=1157  
  cmpb $0x0, 0x64(%r15,%rbx,1)     #  4     0x7b565  6      OPC=461   
  movl %ebx, %ebx                  #  5     0x7b56b  2      OPC=1157  
  movl $0x1003abc8, (%r15,%rbx,1)  #  6     0x7b56d  8      OPC=1135  
  je .L_7b5e0                      #  7     0x7b575  6      OPC=893   
  nop                              #  8     0x7b57b  1      OPC=1343  
  nop                              #  9     0x7b57c  1      OPC=1343  
  movl %ebx, %ebx                  #  10    0x7b57d  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edi      #  11    0x7b57f  5      OPC=1156  
  xchgw %ax, %ax                   #  12    0x7b584  2      OPC=3700  
  testq %rdi, %rdi                 #  13    0x7b586  3      OPC=2438  
  je .L_7b5a0                      #  14    0x7b589  6      OPC=893   
  nop                              #  15    0x7b58f  1      OPC=1343  
  nop                              #  16    0x7b590  1      OPC=1343  
  nop                              #  17    0x7b591  1      OPC=1343  
  nop                              #  18    0x7b592  1      OPC=1343  
  nop                              #  19    0x7b593  1      OPC=1343  
  nop                              #  20    0x7b594  1      OPC=1343  
  nop                              #  21    0x7b595  1      OPC=1343  
  nop                              #  22    0x7b596  1      OPC=1343  
  nop                              #  23    0x7b597  1      OPC=1343  
  nop                              #  24    0x7b598  1      OPC=1343  
  nop                              #  25    0x7b599  1      OPC=1343  
  nop                              #  26    0x7b59a  1      OPC=1343  
  nop                              #  27    0x7b59b  1      OPC=1343  
  nop                              #  28    0x7b59c  1      OPC=1343  
  nop                              #  29    0x7b59d  1      OPC=1343  
  nop                              #  30    0x7b59e  1      OPC=1343  
  nop                              #  31    0x7b59f  1      OPC=1343  
  nop                              #  32    0x7b5a0  1      OPC=1343  
  nop                              #  33    0x7b5a1  1      OPC=1343  
  nop                              #  34    0x7b5a2  1      OPC=1343  
  nop                              #  35    0x7b5a3  1      OPC=1343  
  nop                              #  36    0x7b5a4  1      OPC=1343  
  nop                              #  37    0x7b5a5  1      OPC=1343  
  nop                              #  38    0x7b5a6  1      OPC=1343  
  callq ._ZdaPv                    #  39    0x7b5a7  5      OPC=260   
.L_7b5a0:                          #        0x7b5ac  0      OPC=0     
  movl %ebx, %ebx                  #  40    0x7b5ac  2      OPC=1157  
  movl 0x14(%r15,%rbx,1), %edi     #  41    0x7b5ae  5      OPC=1156  
  testq %rdi, %rdi                 #  42    0x7b5b3  3      OPC=2438  
  je .L_7b5c0                      #  43    0x7b5b6  6      OPC=893   
  nop                              #  44    0x7b5bc  1      OPC=1343  
  nop                              #  45    0x7b5bd  1      OPC=1343  
  nop                              #  46    0x7b5be  1      OPC=1343  
  nop                              #  47    0x7b5bf  1      OPC=1343  
  nop                              #  48    0x7b5c0  1      OPC=1343  
  nop                              #  49    0x7b5c1  1      OPC=1343  
  nop                              #  50    0x7b5c2  1      OPC=1343  
  nop                              #  51    0x7b5c3  1      OPC=1343  
  nop                              #  52    0x7b5c4  1      OPC=1343  
  nop                              #  53    0x7b5c5  1      OPC=1343  
  nop                              #  54    0x7b5c6  1      OPC=1343  
  nop                              #  55    0x7b5c7  1      OPC=1343  
  nop                              #  56    0x7b5c8  1      OPC=1343  
  nop                              #  57    0x7b5c9  1      OPC=1343  
  nop                              #  58    0x7b5ca  1      OPC=1343  
  nop                              #  59    0x7b5cb  1      OPC=1343  
  nop                              #  60    0x7b5cc  1      OPC=1343  
  callq ._ZdaPv                    #  61    0x7b5cd  5      OPC=260   
.L_7b5c0:                          #        0x7b5d2  0      OPC=0     
  movl %ebx, %ebx                  #  62    0x7b5d2  2      OPC=1157  
  movl 0x1c(%r15,%rbx,1), %edi     #  63    0x7b5d4  5      OPC=1156  
  testq %rdi, %rdi                 #  64    0x7b5d9  3      OPC=2438  
  je .L_7b5e0                      #  65    0x7b5dc  6      OPC=893   
  nop                              #  66    0x7b5e2  1      OPC=1343  
  nop                              #  67    0x7b5e3  1      OPC=1343  
  nop                              #  68    0x7b5e4  1      OPC=1343  
  nop                              #  69    0x7b5e5  1      OPC=1343  
  nop                              #  70    0x7b5e6  1      OPC=1343  
  nop                              #  71    0x7b5e7  1      OPC=1343  
  nop                              #  72    0x7b5e8  1      OPC=1343  
  nop                              #  73    0x7b5e9  1      OPC=1343  
  nop                              #  74    0x7b5ea  1      OPC=1343  
  nop                              #  75    0x7b5eb  1      OPC=1343  
  nop                              #  76    0x7b5ec  1      OPC=1343  
  nop                              #  77    0x7b5ed  1      OPC=1343  
  nop                              #  78    0x7b5ee  1      OPC=1343  
  nop                              #  79    0x7b5ef  1      OPC=1343  
  nop                              #  80    0x7b5f0  1      OPC=1343  
  nop                              #  81    0x7b5f1  1      OPC=1343  
  nop                              #  82    0x7b5f2  1      OPC=1343  
  callq ._ZdaPv                    #  83    0x7b5f3  5      OPC=260   
.L_7b5e0:                          #        0x7b5f8  0      OPC=0     
  movl %ebx, %edi                  #  84    0x7b5f8  2      OPC=1157  
  popq %rbx                        #  85    0x7b5fa  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev     #  86    0x7b5fb  5      OPC=930   
  nop                              #  87    0x7b600  1      OPC=1343  
  nop                              #  88    0x7b601  1      OPC=1343  
  nop                              #  89    0x7b602  1      OPC=1343  
  nop                              #  90    0x7b603  1      OPC=1343  
  nop                              #  91    0x7b604  1      OPC=1343  
  nop                              #  92    0x7b605  1      OPC=1343  
  nop                              #  93    0x7b606  1      OPC=1343  
  nop                              #  94    0x7b607  1      OPC=1343  
  nop                              #  95    0x7b608  1      OPC=1343  
  nop                              #  96    0x7b609  1      OPC=1343  
  nop                              #  97    0x7b60a  1      OPC=1343  
  nop                              #  98    0x7b60b  1      OPC=1343  
  nop                              #  99    0x7b60c  1      OPC=1343  
  nop                              #  100   0x7b60d  1      OPC=1343  
  nop                              #  101   0x7b60e  1      OPC=1343  
  nop                              #  102   0x7b60f  1      OPC=1343  
  nop                              #  103   0x7b610  1      OPC=1343  
  nop                              #  104   0x7b611  1      OPC=1343  
  nop                              #  105   0x7b612  1      OPC=1343  
  nop                              #  106   0x7b613  1      OPC=1343  
  nop                              #  107   0x7b614  1      OPC=1343  
  nop                              #  108   0x7b615  1      OPC=1343  
  nop                              #  109   0x7b616  1      OPC=1343  
  nop                              #  110   0x7b617  1      OPC=1343  
                                                                      
.size _ZNSt16__numpunct_cacheIcED2Ev, .-_ZNSt16__numpunct_cacheIcED2Ev


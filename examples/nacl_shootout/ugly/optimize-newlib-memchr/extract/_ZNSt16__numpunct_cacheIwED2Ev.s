  .text
  .globl _ZNSt16__numpunct_cacheIwED2Ev
  .type _ZNSt16__numpunct_cacheIwED2Ev, @function

#! file-offset 0xf5280
#! rip-offset  0xb5280
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIwED2Ev:   #        0xb5280  0      OPC=<label>         
  pushq %rbx                       #  1     0xb5280  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xb5281  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0xb5283  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x124(%r15,%rbx,1)    #  4     0xb5285  9      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0xb528e  2      OPC=movl_r32_r32    
  movl $0x1003be58, (%r15,%rbx,1)  #  6     0xb5290  8      OPC=movl_m32_imm32  
  je .L_b5300                      #  7     0xb5298  2      OPC=je_label        
  nop                              #  8     0xb529a  1      OPC=nop             
  nop                              #  9     0xb529b  1      OPC=nop             
  nop                              #  10    0xb529c  1      OPC=nop             
  nop                              #  11    0xb529d  1      OPC=nop             
  nop                              #  12    0xb529e  1      OPC=nop             
  nop                              #  13    0xb529f  1      OPC=nop             
  movl %ebx, %ebx                  #  14    0xb52a0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  15    0xb52a2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  16    0xb52a7  3      OPC=testq_r64_r64   
  je .L_b52c0                      #  17    0xb52aa  2      OPC=je_label        
  nop                              #  18    0xb52ac  1      OPC=nop             
  nop                              #  19    0xb52ad  1      OPC=nop             
  nop                              #  20    0xb52ae  1      OPC=nop             
  nop                              #  21    0xb52af  1      OPC=nop             
  nop                              #  22    0xb52b0  1      OPC=nop             
  nop                              #  23    0xb52b1  1      OPC=nop             
  nop                              #  24    0xb52b2  1      OPC=nop             
  nop                              #  25    0xb52b3  1      OPC=nop             
  nop                              #  26    0xb52b4  1      OPC=nop             
  nop                              #  27    0xb52b5  1      OPC=nop             
  nop                              #  28    0xb52b6  1      OPC=nop             
  nop                              #  29    0xb52b7  1      OPC=nop             
  nop                              #  30    0xb52b8  1      OPC=nop             
  nop                              #  31    0xb52b9  1      OPC=nop             
  nop                              #  32    0xb52ba  1      OPC=nop             
  callq ._ZdaPv                    #  33    0xb52bb  5      OPC=callq_label     
.L_b52c0:                          #        0xb52c0  0      OPC=<label>         
  movl %ebx, %ebx                  #  34    0xb52c0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  35    0xb52c2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  36    0xb52c7  3      OPC=testq_r64_r64   
  je .L_b52e0                      #  37    0xb52ca  2      OPC=je_label        
  nop                              #  38    0xb52cc  1      OPC=nop             
  nop                              #  39    0xb52cd  1      OPC=nop             
  nop                              #  40    0xb52ce  1      OPC=nop             
  nop                              #  41    0xb52cf  1      OPC=nop             
  nop                              #  42    0xb52d0  1      OPC=nop             
  nop                              #  43    0xb52d1  1      OPC=nop             
  nop                              #  44    0xb52d2  1      OPC=nop             
  nop                              #  45    0xb52d3  1      OPC=nop             
  nop                              #  46    0xb52d4  1      OPC=nop             
  nop                              #  47    0xb52d5  1      OPC=nop             
  nop                              #  48    0xb52d6  1      OPC=nop             
  nop                              #  49    0xb52d7  1      OPC=nop             
  nop                              #  50    0xb52d8  1      OPC=nop             
  nop                              #  51    0xb52d9  1      OPC=nop             
  nop                              #  52    0xb52da  1      OPC=nop             
  callq ._ZdaPv                    #  53    0xb52db  5      OPC=callq_label     
.L_b52e0:                          #        0xb52e0  0      OPC=<label>         
  movl %ebx, %ebx                  #  54    0xb52e0  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  55    0xb52e2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  56    0xb52e7  3      OPC=testq_r64_r64   
  je .L_b5300                      #  57    0xb52ea  2      OPC=je_label        
  nop                              #  58    0xb52ec  1      OPC=nop             
  nop                              #  59    0xb52ed  1      OPC=nop             
  nop                              #  60    0xb52ee  1      OPC=nop             
  nop                              #  61    0xb52ef  1      OPC=nop             
  nop                              #  62    0xb52f0  1      OPC=nop             
  nop                              #  63    0xb52f1  1      OPC=nop             
  nop                              #  64    0xb52f2  1      OPC=nop             
  nop                              #  65    0xb52f3  1      OPC=nop             
  nop                              #  66    0xb52f4  1      OPC=nop             
  nop                              #  67    0xb52f5  1      OPC=nop             
  nop                              #  68    0xb52f6  1      OPC=nop             
  nop                              #  69    0xb52f7  1      OPC=nop             
  nop                              #  70    0xb52f8  1      OPC=nop             
  nop                              #  71    0xb52f9  1      OPC=nop             
  nop                              #  72    0xb52fa  1      OPC=nop             
  callq ._ZdaPv                    #  73    0xb52fb  5      OPC=callq_label     
.L_b5300:                          #        0xb5300  0      OPC=<label>         
  movl %ebx, %edi                  #  74    0xb5300  2      OPC=movl_r32_r32    
  popq %rbx                        #  75    0xb5302  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  76    0xb5303  5      OPC=jmpq_label_1    
  nop                              #  77    0xb5308  1      OPC=nop             
  nop                              #  78    0xb5309  1      OPC=nop             
  nop                              #  79    0xb530a  1      OPC=nop             
  nop                              #  80    0xb530b  1      OPC=nop             
  nop                              #  81    0xb530c  1      OPC=nop             
  nop                              #  82    0xb530d  1      OPC=nop             
  nop                              #  83    0xb530e  1      OPC=nop             
  nop                              #  84    0xb530f  1      OPC=nop             
  nop                              #  85    0xb5310  1      OPC=nop             
  nop                              #  86    0xb5311  1      OPC=nop             
  nop                              #  87    0xb5312  1      OPC=nop             
  nop                              #  88    0xb5313  1      OPC=nop             
  nop                              #  89    0xb5314  1      OPC=nop             
  nop                              #  90    0xb5315  1      OPC=nop             
  nop                              #  91    0xb5316  1      OPC=nop             
  nop                              #  92    0xb5317  1      OPC=nop             
  nop                              #  93    0xb5318  1      OPC=nop             
  nop                              #  94    0xb5319  1      OPC=nop             
  nop                              #  95    0xb531a  1      OPC=nop             
  nop                              #  96    0xb531b  1      OPC=nop             
  nop                              #  97    0xb531c  1      OPC=nop             
  nop                              #  98    0xb531d  1      OPC=nop             
  nop                              #  99    0xb531e  1      OPC=nop             
  nop                              #  100   0xb531f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIwED2Ev, .-_ZNSt16__numpunct_cacheIwED2Ev


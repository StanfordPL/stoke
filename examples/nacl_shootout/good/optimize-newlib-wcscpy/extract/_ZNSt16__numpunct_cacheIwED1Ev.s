  .text
  .globl _ZNSt16__numpunct_cacheIwED1Ev
  .type _ZNSt16__numpunct_cacheIwED1Ev, @function

#! file-offset 0xf47c0
#! rip-offset  0xb47c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIwED1Ev:   #        0xb47c0  0      OPC=<label>         
  pushq %rbx                       #  1     0xb47c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xb47c1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0xb47c3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x124(%r15,%rbx,1)    #  4     0xb47c5  9      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0xb47ce  2      OPC=movl_r32_r32    
  movl $0x1003be58, (%r15,%rbx,1)  #  6     0xb47d0  8      OPC=movl_m32_imm32  
  je .L_b4840                      #  7     0xb47d8  2      OPC=je_label        
  nop                              #  8     0xb47da  1      OPC=nop             
  nop                              #  9     0xb47db  1      OPC=nop             
  nop                              #  10    0xb47dc  1      OPC=nop             
  nop                              #  11    0xb47dd  1      OPC=nop             
  nop                              #  12    0xb47de  1      OPC=nop             
  nop                              #  13    0xb47df  1      OPC=nop             
  movl %ebx, %ebx                  #  14    0xb47e0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  15    0xb47e2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  16    0xb47e7  3      OPC=testq_r64_r64   
  je .L_b4800                      #  17    0xb47ea  2      OPC=je_label        
  nop                              #  18    0xb47ec  1      OPC=nop             
  nop                              #  19    0xb47ed  1      OPC=nop             
  nop                              #  20    0xb47ee  1      OPC=nop             
  nop                              #  21    0xb47ef  1      OPC=nop             
  nop                              #  22    0xb47f0  1      OPC=nop             
  nop                              #  23    0xb47f1  1      OPC=nop             
  nop                              #  24    0xb47f2  1      OPC=nop             
  nop                              #  25    0xb47f3  1      OPC=nop             
  nop                              #  26    0xb47f4  1      OPC=nop             
  nop                              #  27    0xb47f5  1      OPC=nop             
  nop                              #  28    0xb47f6  1      OPC=nop             
  nop                              #  29    0xb47f7  1      OPC=nop             
  nop                              #  30    0xb47f8  1      OPC=nop             
  nop                              #  31    0xb47f9  1      OPC=nop             
  nop                              #  32    0xb47fa  1      OPC=nop             
  callq ._ZdaPv                    #  33    0xb47fb  5      OPC=callq_label     
.L_b4800:                          #        0xb4800  0      OPC=<label>         
  movl %ebx, %ebx                  #  34    0xb4800  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  35    0xb4802  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  36    0xb4807  3      OPC=testq_r64_r64   
  je .L_b4820                      #  37    0xb480a  2      OPC=je_label        
  nop                              #  38    0xb480c  1      OPC=nop             
  nop                              #  39    0xb480d  1      OPC=nop             
  nop                              #  40    0xb480e  1      OPC=nop             
  nop                              #  41    0xb480f  1      OPC=nop             
  nop                              #  42    0xb4810  1      OPC=nop             
  nop                              #  43    0xb4811  1      OPC=nop             
  nop                              #  44    0xb4812  1      OPC=nop             
  nop                              #  45    0xb4813  1      OPC=nop             
  nop                              #  46    0xb4814  1      OPC=nop             
  nop                              #  47    0xb4815  1      OPC=nop             
  nop                              #  48    0xb4816  1      OPC=nop             
  nop                              #  49    0xb4817  1      OPC=nop             
  nop                              #  50    0xb4818  1      OPC=nop             
  nop                              #  51    0xb4819  1      OPC=nop             
  nop                              #  52    0xb481a  1      OPC=nop             
  callq ._ZdaPv                    #  53    0xb481b  5      OPC=callq_label     
.L_b4820:                          #        0xb4820  0      OPC=<label>         
  movl %ebx, %ebx                  #  54    0xb4820  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  55    0xb4822  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  56    0xb4827  3      OPC=testq_r64_r64   
  je .L_b4840                      #  57    0xb482a  2      OPC=je_label        
  nop                              #  58    0xb482c  1      OPC=nop             
  nop                              #  59    0xb482d  1      OPC=nop             
  nop                              #  60    0xb482e  1      OPC=nop             
  nop                              #  61    0xb482f  1      OPC=nop             
  nop                              #  62    0xb4830  1      OPC=nop             
  nop                              #  63    0xb4831  1      OPC=nop             
  nop                              #  64    0xb4832  1      OPC=nop             
  nop                              #  65    0xb4833  1      OPC=nop             
  nop                              #  66    0xb4834  1      OPC=nop             
  nop                              #  67    0xb4835  1      OPC=nop             
  nop                              #  68    0xb4836  1      OPC=nop             
  nop                              #  69    0xb4837  1      OPC=nop             
  nop                              #  70    0xb4838  1      OPC=nop             
  nop                              #  71    0xb4839  1      OPC=nop             
  nop                              #  72    0xb483a  1      OPC=nop             
  callq ._ZdaPv                    #  73    0xb483b  5      OPC=callq_label     
.L_b4840:                          #        0xb4840  0      OPC=<label>         
  movl %ebx, %edi                  #  74    0xb4840  2      OPC=movl_r32_r32    
  popq %rbx                        #  75    0xb4842  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  76    0xb4843  5      OPC=jmpq_label_1    
  nop                              #  77    0xb4848  1      OPC=nop             
  nop                              #  78    0xb4849  1      OPC=nop             
  nop                              #  79    0xb484a  1      OPC=nop             
  nop                              #  80    0xb484b  1      OPC=nop             
  nop                              #  81    0xb484c  1      OPC=nop             
  nop                              #  82    0xb484d  1      OPC=nop             
  nop                              #  83    0xb484e  1      OPC=nop             
  nop                              #  84    0xb484f  1      OPC=nop             
  nop                              #  85    0xb4850  1      OPC=nop             
  nop                              #  86    0xb4851  1      OPC=nop             
  nop                              #  87    0xb4852  1      OPC=nop             
  nop                              #  88    0xb4853  1      OPC=nop             
  nop                              #  89    0xb4854  1      OPC=nop             
  nop                              #  90    0xb4855  1      OPC=nop             
  nop                              #  91    0xb4856  1      OPC=nop             
  nop                              #  92    0xb4857  1      OPC=nop             
  nop                              #  93    0xb4858  1      OPC=nop             
  nop                              #  94    0xb4859  1      OPC=nop             
  nop                              #  95    0xb485a  1      OPC=nop             
  nop                              #  96    0xb485b  1      OPC=nop             
  nop                              #  97    0xb485c  1      OPC=nop             
  nop                              #  98    0xb485d  1      OPC=nop             
  nop                              #  99    0xb485e  1      OPC=nop             
  nop                              #  100   0xb485f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIwED1Ev, .-_ZNSt16__numpunct_cacheIwED1Ev


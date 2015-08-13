  .text
  .globl _ZNSt16__numpunct_cacheIcED2Ev
  .type _ZNSt16__numpunct_cacheIcED2Ev, @function

#! file-offset 0xbbaa0
#! rip-offset  0x7baa0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIcED2Ev:   #        0x7baa0  0      OPC=<label>         
  pushq %rbx                       #  1     0x7baa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x7baa1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0x7baa3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x64(%r15,%rbx,1)     #  4     0x7baa5  6      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0x7baab  2      OPC=movl_r32_r32    
  movl $0x1003abc8, (%r15,%rbx,1)  #  6     0x7baad  8      OPC=movl_m32_imm32  
  je .L_7bb20                      #  7     0x7bab5  2      OPC=je_label        
  movl %ebx, %ebx                  #  8     0x7bab7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  9     0x7bab9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                   #  10    0x7babe  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                 #  11    0x7bac0  3      OPC=testq_r64_r64   
  je .L_7bae0                      #  12    0x7bac3  2      OPC=je_label        
  nop                              #  13    0x7bac5  1      OPC=nop             
  nop                              #  14    0x7bac6  1      OPC=nop             
  nop                              #  15    0x7bac7  1      OPC=nop             
  nop                              #  16    0x7bac8  1      OPC=nop             
  nop                              #  17    0x7bac9  1      OPC=nop             
  nop                              #  18    0x7baca  1      OPC=nop             
  nop                              #  19    0x7bacb  1      OPC=nop             
  nop                              #  20    0x7bacc  1      OPC=nop             
  nop                              #  21    0x7bacd  1      OPC=nop             
  nop                              #  22    0x7bace  1      OPC=nop             
  nop                              #  23    0x7bacf  1      OPC=nop             
  nop                              #  24    0x7bad0  1      OPC=nop             
  nop                              #  25    0x7bad1  1      OPC=nop             
  nop                              #  26    0x7bad2  1      OPC=nop             
  nop                              #  27    0x7bad3  1      OPC=nop             
  nop                              #  28    0x7bad4  1      OPC=nop             
  nop                              #  29    0x7bad5  1      OPC=nop             
  nop                              #  30    0x7bad6  1      OPC=nop             
  nop                              #  31    0x7bad7  1      OPC=nop             
  nop                              #  32    0x7bad8  1      OPC=nop             
  nop                              #  33    0x7bad9  1      OPC=nop             
  nop                              #  34    0x7bada  1      OPC=nop             
  callq ._ZdaPv                    #  35    0x7badb  5      OPC=callq_label     
.L_7bae0:                          #        0x7bae0  0      OPC=<label>         
  movl %ebx, %ebx                  #  36    0x7bae0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  37    0x7bae2  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  38    0x7bae7  3      OPC=testq_r64_r64   
  je .L_7bb00                      #  39    0x7baea  2      OPC=je_label        
  nop                              #  40    0x7baec  1      OPC=nop             
  nop                              #  41    0x7baed  1      OPC=nop             
  nop                              #  42    0x7baee  1      OPC=nop             
  nop                              #  43    0x7baef  1      OPC=nop             
  nop                              #  44    0x7baf0  1      OPC=nop             
  nop                              #  45    0x7baf1  1      OPC=nop             
  nop                              #  46    0x7baf2  1      OPC=nop             
  nop                              #  47    0x7baf3  1      OPC=nop             
  nop                              #  48    0x7baf4  1      OPC=nop             
  nop                              #  49    0x7baf5  1      OPC=nop             
  nop                              #  50    0x7baf6  1      OPC=nop             
  nop                              #  51    0x7baf7  1      OPC=nop             
  nop                              #  52    0x7baf8  1      OPC=nop             
  nop                              #  53    0x7baf9  1      OPC=nop             
  nop                              #  54    0x7bafa  1      OPC=nop             
  callq ._ZdaPv                    #  55    0x7bafb  5      OPC=callq_label     
.L_7bb00:                          #        0x7bb00  0      OPC=<label>         
  movl %ebx, %ebx                  #  56    0x7bb00  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  57    0x7bb02  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  58    0x7bb07  3      OPC=testq_r64_r64   
  je .L_7bb20                      #  59    0x7bb0a  2      OPC=je_label        
  nop                              #  60    0x7bb0c  1      OPC=nop             
  nop                              #  61    0x7bb0d  1      OPC=nop             
  nop                              #  62    0x7bb0e  1      OPC=nop             
  nop                              #  63    0x7bb0f  1      OPC=nop             
  nop                              #  64    0x7bb10  1      OPC=nop             
  nop                              #  65    0x7bb11  1      OPC=nop             
  nop                              #  66    0x7bb12  1      OPC=nop             
  nop                              #  67    0x7bb13  1      OPC=nop             
  nop                              #  68    0x7bb14  1      OPC=nop             
  nop                              #  69    0x7bb15  1      OPC=nop             
  nop                              #  70    0x7bb16  1      OPC=nop             
  nop                              #  71    0x7bb17  1      OPC=nop             
  nop                              #  72    0x7bb18  1      OPC=nop             
  nop                              #  73    0x7bb19  1      OPC=nop             
  nop                              #  74    0x7bb1a  1      OPC=nop             
  callq ._ZdaPv                    #  75    0x7bb1b  5      OPC=callq_label     
.L_7bb20:                          #        0x7bb20  0      OPC=<label>         
  movl %ebx, %edi                  #  76    0x7bb20  2      OPC=movl_r32_r32    
  popq %rbx                        #  77    0x7bb22  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  78    0x7bb23  5      OPC=jmpq_label_1    
  nop                              #  79    0x7bb28  1      OPC=nop             
  nop                              #  80    0x7bb29  1      OPC=nop             
  nop                              #  81    0x7bb2a  1      OPC=nop             
  nop                              #  82    0x7bb2b  1      OPC=nop             
  nop                              #  83    0x7bb2c  1      OPC=nop             
  nop                              #  84    0x7bb2d  1      OPC=nop             
  nop                              #  85    0x7bb2e  1      OPC=nop             
  nop                              #  86    0x7bb2f  1      OPC=nop             
  nop                              #  87    0x7bb30  1      OPC=nop             
  nop                              #  88    0x7bb31  1      OPC=nop             
  nop                              #  89    0x7bb32  1      OPC=nop             
  nop                              #  90    0x7bb33  1      OPC=nop             
  nop                              #  91    0x7bb34  1      OPC=nop             
  nop                              #  92    0x7bb35  1      OPC=nop             
  nop                              #  93    0x7bb36  1      OPC=nop             
  nop                              #  94    0x7bb37  1      OPC=nop             
  nop                              #  95    0x7bb38  1      OPC=nop             
  nop                              #  96    0x7bb39  1      OPC=nop             
  nop                              #  97    0x7bb3a  1      OPC=nop             
  nop                              #  98    0x7bb3b  1      OPC=nop             
  nop                              #  99    0x7bb3c  1      OPC=nop             
  nop                              #  100   0x7bb3d  1      OPC=nop             
  nop                              #  101   0x7bb3e  1      OPC=nop             
  nop                              #  102   0x7bb3f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIcED2Ev, .-_ZNSt16__numpunct_cacheIcED2Ev


  .text
  .globl _ZNSt16__numpunct_cacheIwED1Ev
  .type _ZNSt16__numpunct_cacheIwED1Ev, @function

#! file-offset 0xf51e0
#! rip-offset  0xb51e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIwED1Ev:   #        0xb51e0  0      OPC=<label>         
  pushq %rbx                       #  1     0xb51e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xb51e1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0xb51e3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x124(%r15,%rbx,1)    #  4     0xb51e5  9      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0xb51ee  2      OPC=movl_r32_r32    
  movl $0x1003be58, (%r15,%rbx,1)  #  6     0xb51f0  8      OPC=movl_m32_imm32  
  je .L_b5260                      #  7     0xb51f8  2      OPC=je_label        
  nop                              #  8     0xb51fa  1      OPC=nop             
  nop                              #  9     0xb51fb  1      OPC=nop             
  nop                              #  10    0xb51fc  1      OPC=nop             
  nop                              #  11    0xb51fd  1      OPC=nop             
  nop                              #  12    0xb51fe  1      OPC=nop             
  nop                              #  13    0xb51ff  1      OPC=nop             
  movl %ebx, %ebx                  #  14    0xb5200  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  15    0xb5202  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  16    0xb5207  3      OPC=testq_r64_r64   
  je .L_b5220                      #  17    0xb520a  2      OPC=je_label        
  nop                              #  18    0xb520c  1      OPC=nop             
  nop                              #  19    0xb520d  1      OPC=nop             
  nop                              #  20    0xb520e  1      OPC=nop             
  nop                              #  21    0xb520f  1      OPC=nop             
  nop                              #  22    0xb5210  1      OPC=nop             
  nop                              #  23    0xb5211  1      OPC=nop             
  nop                              #  24    0xb5212  1      OPC=nop             
  nop                              #  25    0xb5213  1      OPC=nop             
  nop                              #  26    0xb5214  1      OPC=nop             
  nop                              #  27    0xb5215  1      OPC=nop             
  nop                              #  28    0xb5216  1      OPC=nop             
  nop                              #  29    0xb5217  1      OPC=nop             
  nop                              #  30    0xb5218  1      OPC=nop             
  nop                              #  31    0xb5219  1      OPC=nop             
  nop                              #  32    0xb521a  1      OPC=nop             
  callq ._ZdaPv                    #  33    0xb521b  5      OPC=callq_label     
.L_b5220:                          #        0xb5220  0      OPC=<label>         
  movl %ebx, %ebx                  #  34    0xb5220  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  35    0xb5222  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  36    0xb5227  3      OPC=testq_r64_r64   
  je .L_b5240                      #  37    0xb522a  2      OPC=je_label        
  nop                              #  38    0xb522c  1      OPC=nop             
  nop                              #  39    0xb522d  1      OPC=nop             
  nop                              #  40    0xb522e  1      OPC=nop             
  nop                              #  41    0xb522f  1      OPC=nop             
  nop                              #  42    0xb5230  1      OPC=nop             
  nop                              #  43    0xb5231  1      OPC=nop             
  nop                              #  44    0xb5232  1      OPC=nop             
  nop                              #  45    0xb5233  1      OPC=nop             
  nop                              #  46    0xb5234  1      OPC=nop             
  nop                              #  47    0xb5235  1      OPC=nop             
  nop                              #  48    0xb5236  1      OPC=nop             
  nop                              #  49    0xb5237  1      OPC=nop             
  nop                              #  50    0xb5238  1      OPC=nop             
  nop                              #  51    0xb5239  1      OPC=nop             
  nop                              #  52    0xb523a  1      OPC=nop             
  callq ._ZdaPv                    #  53    0xb523b  5      OPC=callq_label     
.L_b5240:                          #        0xb5240  0      OPC=<label>         
  movl %ebx, %ebx                  #  54    0xb5240  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  55    0xb5242  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  56    0xb5247  3      OPC=testq_r64_r64   
  je .L_b5260                      #  57    0xb524a  2      OPC=je_label        
  nop                              #  58    0xb524c  1      OPC=nop             
  nop                              #  59    0xb524d  1      OPC=nop             
  nop                              #  60    0xb524e  1      OPC=nop             
  nop                              #  61    0xb524f  1      OPC=nop             
  nop                              #  62    0xb5250  1      OPC=nop             
  nop                              #  63    0xb5251  1      OPC=nop             
  nop                              #  64    0xb5252  1      OPC=nop             
  nop                              #  65    0xb5253  1      OPC=nop             
  nop                              #  66    0xb5254  1      OPC=nop             
  nop                              #  67    0xb5255  1      OPC=nop             
  nop                              #  68    0xb5256  1      OPC=nop             
  nop                              #  69    0xb5257  1      OPC=nop             
  nop                              #  70    0xb5258  1      OPC=nop             
  nop                              #  71    0xb5259  1      OPC=nop             
  nop                              #  72    0xb525a  1      OPC=nop             
  callq ._ZdaPv                    #  73    0xb525b  5      OPC=callq_label     
.L_b5260:                          #        0xb5260  0      OPC=<label>         
  movl %ebx, %edi                  #  74    0xb5260  2      OPC=movl_r32_r32    
  popq %rbx                        #  75    0xb5262  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  76    0xb5263  5      OPC=jmpq_label_1    
  nop                              #  77    0xb5268  1      OPC=nop             
  nop                              #  78    0xb5269  1      OPC=nop             
  nop                              #  79    0xb526a  1      OPC=nop             
  nop                              #  80    0xb526b  1      OPC=nop             
  nop                              #  81    0xb526c  1      OPC=nop             
  nop                              #  82    0xb526d  1      OPC=nop             
  nop                              #  83    0xb526e  1      OPC=nop             
  nop                              #  84    0xb526f  1      OPC=nop             
  nop                              #  85    0xb5270  1      OPC=nop             
  nop                              #  86    0xb5271  1      OPC=nop             
  nop                              #  87    0xb5272  1      OPC=nop             
  nop                              #  88    0xb5273  1      OPC=nop             
  nop                              #  89    0xb5274  1      OPC=nop             
  nop                              #  90    0xb5275  1      OPC=nop             
  nop                              #  91    0xb5276  1      OPC=nop             
  nop                              #  92    0xb5277  1      OPC=nop             
  nop                              #  93    0xb5278  1      OPC=nop             
  nop                              #  94    0xb5279  1      OPC=nop             
  nop                              #  95    0xb527a  1      OPC=nop             
  nop                              #  96    0xb527b  1      OPC=nop             
  nop                              #  97    0xb527c  1      OPC=nop             
  nop                              #  98    0xb527d  1      OPC=nop             
  nop                              #  99    0xb527e  1      OPC=nop             
  nop                              #  100   0xb527f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIwED1Ev, .-_ZNSt16__numpunct_cacheIwED1Ev


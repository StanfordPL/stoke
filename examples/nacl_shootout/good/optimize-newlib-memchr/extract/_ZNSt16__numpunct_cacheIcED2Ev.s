  .text
  .globl _ZNSt16__numpunct_cacheIcED2Ev
  .type _ZNSt16__numpunct_cacheIcED2Ev, @function

#! file-offset 0xbc4c0
#! rip-offset  0x7c4c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIcED2Ev:   #        0x7c4c0  0      OPC=<label>         
  pushq %rbx                       #  1     0x7c4c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x7c4c1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0x7c4c3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x64(%r15,%rbx,1)     #  4     0x7c4c5  6      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0x7c4cb  2      OPC=movl_r32_r32    
  movl $0x1003abc8, (%r15,%rbx,1)  #  6     0x7c4cd  8      OPC=movl_m32_imm32  
  je .L_7c540                      #  7     0x7c4d5  2      OPC=je_label        
  movl %ebx, %ebx                  #  8     0x7c4d7  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  9     0x7c4d9  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                   #  10    0x7c4de  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                 #  11    0x7c4e0  3      OPC=testq_r64_r64   
  je .L_7c500                      #  12    0x7c4e3  2      OPC=je_label        
  nop                              #  13    0x7c4e5  1      OPC=nop             
  nop                              #  14    0x7c4e6  1      OPC=nop             
  nop                              #  15    0x7c4e7  1      OPC=nop             
  nop                              #  16    0x7c4e8  1      OPC=nop             
  nop                              #  17    0x7c4e9  1      OPC=nop             
  nop                              #  18    0x7c4ea  1      OPC=nop             
  nop                              #  19    0x7c4eb  1      OPC=nop             
  nop                              #  20    0x7c4ec  1      OPC=nop             
  nop                              #  21    0x7c4ed  1      OPC=nop             
  nop                              #  22    0x7c4ee  1      OPC=nop             
  nop                              #  23    0x7c4ef  1      OPC=nop             
  nop                              #  24    0x7c4f0  1      OPC=nop             
  nop                              #  25    0x7c4f1  1      OPC=nop             
  nop                              #  26    0x7c4f2  1      OPC=nop             
  nop                              #  27    0x7c4f3  1      OPC=nop             
  nop                              #  28    0x7c4f4  1      OPC=nop             
  nop                              #  29    0x7c4f5  1      OPC=nop             
  nop                              #  30    0x7c4f6  1      OPC=nop             
  nop                              #  31    0x7c4f7  1      OPC=nop             
  nop                              #  32    0x7c4f8  1      OPC=nop             
  nop                              #  33    0x7c4f9  1      OPC=nop             
  nop                              #  34    0x7c4fa  1      OPC=nop             
  callq ._ZdaPv                    #  35    0x7c4fb  5      OPC=callq_label     
.L_7c500:                          #        0x7c500  0      OPC=<label>         
  movl %ebx, %ebx                  #  36    0x7c500  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  37    0x7c502  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  38    0x7c507  3      OPC=testq_r64_r64   
  je .L_7c520                      #  39    0x7c50a  2      OPC=je_label        
  nop                              #  40    0x7c50c  1      OPC=nop             
  nop                              #  41    0x7c50d  1      OPC=nop             
  nop                              #  42    0x7c50e  1      OPC=nop             
  nop                              #  43    0x7c50f  1      OPC=nop             
  nop                              #  44    0x7c510  1      OPC=nop             
  nop                              #  45    0x7c511  1      OPC=nop             
  nop                              #  46    0x7c512  1      OPC=nop             
  nop                              #  47    0x7c513  1      OPC=nop             
  nop                              #  48    0x7c514  1      OPC=nop             
  nop                              #  49    0x7c515  1      OPC=nop             
  nop                              #  50    0x7c516  1      OPC=nop             
  nop                              #  51    0x7c517  1      OPC=nop             
  nop                              #  52    0x7c518  1      OPC=nop             
  nop                              #  53    0x7c519  1      OPC=nop             
  nop                              #  54    0x7c51a  1      OPC=nop             
  callq ._ZdaPv                    #  55    0x7c51b  5      OPC=callq_label     
.L_7c520:                          #        0x7c520  0      OPC=<label>         
  movl %ebx, %ebx                  #  56    0x7c520  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  57    0x7c522  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  58    0x7c527  3      OPC=testq_r64_r64   
  je .L_7c540                      #  59    0x7c52a  2      OPC=je_label        
  nop                              #  60    0x7c52c  1      OPC=nop             
  nop                              #  61    0x7c52d  1      OPC=nop             
  nop                              #  62    0x7c52e  1      OPC=nop             
  nop                              #  63    0x7c52f  1      OPC=nop             
  nop                              #  64    0x7c530  1      OPC=nop             
  nop                              #  65    0x7c531  1      OPC=nop             
  nop                              #  66    0x7c532  1      OPC=nop             
  nop                              #  67    0x7c533  1      OPC=nop             
  nop                              #  68    0x7c534  1      OPC=nop             
  nop                              #  69    0x7c535  1      OPC=nop             
  nop                              #  70    0x7c536  1      OPC=nop             
  nop                              #  71    0x7c537  1      OPC=nop             
  nop                              #  72    0x7c538  1      OPC=nop             
  nop                              #  73    0x7c539  1      OPC=nop             
  nop                              #  74    0x7c53a  1      OPC=nop             
  callq ._ZdaPv                    #  75    0x7c53b  5      OPC=callq_label     
.L_7c540:                          #        0x7c540  0      OPC=<label>         
  movl %ebx, %edi                  #  76    0x7c540  2      OPC=movl_r32_r32    
  popq %rbx                        #  77    0x7c542  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  78    0x7c543  5      OPC=jmpq_label_1    
  nop                              #  79    0x7c548  1      OPC=nop             
  nop                              #  80    0x7c549  1      OPC=nop             
  nop                              #  81    0x7c54a  1      OPC=nop             
  nop                              #  82    0x7c54b  1      OPC=nop             
  nop                              #  83    0x7c54c  1      OPC=nop             
  nop                              #  84    0x7c54d  1      OPC=nop             
  nop                              #  85    0x7c54e  1      OPC=nop             
  nop                              #  86    0x7c54f  1      OPC=nop             
  nop                              #  87    0x7c550  1      OPC=nop             
  nop                              #  88    0x7c551  1      OPC=nop             
  nop                              #  89    0x7c552  1      OPC=nop             
  nop                              #  90    0x7c553  1      OPC=nop             
  nop                              #  91    0x7c554  1      OPC=nop             
  nop                              #  92    0x7c555  1      OPC=nop             
  nop                              #  93    0x7c556  1      OPC=nop             
  nop                              #  94    0x7c557  1      OPC=nop             
  nop                              #  95    0x7c558  1      OPC=nop             
  nop                              #  96    0x7c559  1      OPC=nop             
  nop                              #  97    0x7c55a  1      OPC=nop             
  nop                              #  98    0x7c55b  1      OPC=nop             
  nop                              #  99    0x7c55c  1      OPC=nop             
  nop                              #  100   0x7c55d  1      OPC=nop             
  nop                              #  101   0x7c55e  1      OPC=nop             
  nop                              #  102   0x7c55f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIcED2Ev, .-_ZNSt16__numpunct_cacheIcED2Ev


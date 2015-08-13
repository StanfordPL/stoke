  .text
  .globl _ZNSt16__numpunct_cacheIcED1Ev
  .type _ZNSt16__numpunct_cacheIcED1Ev, @function

#! file-offset 0xbba00
#! rip-offset  0x7ba00
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16__numpunct_cacheIcED1Ev:   #        0x7ba00  0      OPC=<label>         
  pushq %rbx                       #  1     0x7ba00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0x7ba01  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                  #  3     0x7ba03  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x64(%r15,%rbx,1)     #  4     0x7ba05  6      OPC=cmpb_m8_imm8    
  movl %ebx, %ebx                  #  5     0x7ba0b  2      OPC=movl_r32_r32    
  movl $0x1003abc8, (%r15,%rbx,1)  #  6     0x7ba0d  8      OPC=movl_m32_imm32  
  je .L_7ba80                      #  7     0x7ba15  2      OPC=je_label        
  movl %ebx, %ebx                  #  8     0x7ba17  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  9     0x7ba19  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                   #  10    0x7ba1e  2      OPC=xchgw_ax_r16    
  testq %rdi, %rdi                 #  11    0x7ba20  3      OPC=testq_r64_r64   
  je .L_7ba40                      #  12    0x7ba23  2      OPC=je_label        
  nop                              #  13    0x7ba25  1      OPC=nop             
  nop                              #  14    0x7ba26  1      OPC=nop             
  nop                              #  15    0x7ba27  1      OPC=nop             
  nop                              #  16    0x7ba28  1      OPC=nop             
  nop                              #  17    0x7ba29  1      OPC=nop             
  nop                              #  18    0x7ba2a  1      OPC=nop             
  nop                              #  19    0x7ba2b  1      OPC=nop             
  nop                              #  20    0x7ba2c  1      OPC=nop             
  nop                              #  21    0x7ba2d  1      OPC=nop             
  nop                              #  22    0x7ba2e  1      OPC=nop             
  nop                              #  23    0x7ba2f  1      OPC=nop             
  nop                              #  24    0x7ba30  1      OPC=nop             
  nop                              #  25    0x7ba31  1      OPC=nop             
  nop                              #  26    0x7ba32  1      OPC=nop             
  nop                              #  27    0x7ba33  1      OPC=nop             
  nop                              #  28    0x7ba34  1      OPC=nop             
  nop                              #  29    0x7ba35  1      OPC=nop             
  nop                              #  30    0x7ba36  1      OPC=nop             
  nop                              #  31    0x7ba37  1      OPC=nop             
  nop                              #  32    0x7ba38  1      OPC=nop             
  nop                              #  33    0x7ba39  1      OPC=nop             
  nop                              #  34    0x7ba3a  1      OPC=nop             
  callq ._ZdaPv                    #  35    0x7ba3b  5      OPC=callq_label     
.L_7ba40:                          #        0x7ba40  0      OPC=<label>         
  movl %ebx, %ebx                  #  36    0x7ba40  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rbx,1), %edi     #  37    0x7ba42  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  38    0x7ba47  3      OPC=testq_r64_r64   
  je .L_7ba60                      #  39    0x7ba4a  2      OPC=je_label        
  nop                              #  40    0x7ba4c  1      OPC=nop             
  nop                              #  41    0x7ba4d  1      OPC=nop             
  nop                              #  42    0x7ba4e  1      OPC=nop             
  nop                              #  43    0x7ba4f  1      OPC=nop             
  nop                              #  44    0x7ba50  1      OPC=nop             
  nop                              #  45    0x7ba51  1      OPC=nop             
  nop                              #  46    0x7ba52  1      OPC=nop             
  nop                              #  47    0x7ba53  1      OPC=nop             
  nop                              #  48    0x7ba54  1      OPC=nop             
  nop                              #  49    0x7ba55  1      OPC=nop             
  nop                              #  50    0x7ba56  1      OPC=nop             
  nop                              #  51    0x7ba57  1      OPC=nop             
  nop                              #  52    0x7ba58  1      OPC=nop             
  nop                              #  53    0x7ba59  1      OPC=nop             
  nop                              #  54    0x7ba5a  1      OPC=nop             
  callq ._ZdaPv                    #  55    0x7ba5b  5      OPC=callq_label     
.L_7ba60:                          #        0x7ba60  0      OPC=<label>         
  movl %ebx, %ebx                  #  56    0x7ba60  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rbx,1), %edi     #  57    0x7ba62  5      OPC=movl_r32_m32    
  testq %rdi, %rdi                 #  58    0x7ba67  3      OPC=testq_r64_r64   
  je .L_7ba80                      #  59    0x7ba6a  2      OPC=je_label        
  nop                              #  60    0x7ba6c  1      OPC=nop             
  nop                              #  61    0x7ba6d  1      OPC=nop             
  nop                              #  62    0x7ba6e  1      OPC=nop             
  nop                              #  63    0x7ba6f  1      OPC=nop             
  nop                              #  64    0x7ba70  1      OPC=nop             
  nop                              #  65    0x7ba71  1      OPC=nop             
  nop                              #  66    0x7ba72  1      OPC=nop             
  nop                              #  67    0x7ba73  1      OPC=nop             
  nop                              #  68    0x7ba74  1      OPC=nop             
  nop                              #  69    0x7ba75  1      OPC=nop             
  nop                              #  70    0x7ba76  1      OPC=nop             
  nop                              #  71    0x7ba77  1      OPC=nop             
  nop                              #  72    0x7ba78  1      OPC=nop             
  nop                              #  73    0x7ba79  1      OPC=nop             
  nop                              #  74    0x7ba7a  1      OPC=nop             
  callq ._ZdaPv                    #  75    0x7ba7b  5      OPC=callq_label     
.L_7ba80:                          #        0x7ba80  0      OPC=<label>         
  movl %ebx, %edi                  #  76    0x7ba80  2      OPC=movl_r32_r32    
  popq %rbx                        #  77    0x7ba82  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  78    0x7ba83  5      OPC=jmpq_label_1    
  nop                              #  79    0x7ba88  1      OPC=nop             
  nop                              #  80    0x7ba89  1      OPC=nop             
  nop                              #  81    0x7ba8a  1      OPC=nop             
  nop                              #  82    0x7ba8b  1      OPC=nop             
  nop                              #  83    0x7ba8c  1      OPC=nop             
  nop                              #  84    0x7ba8d  1      OPC=nop             
  nop                              #  85    0x7ba8e  1      OPC=nop             
  nop                              #  86    0x7ba8f  1      OPC=nop             
  nop                              #  87    0x7ba90  1      OPC=nop             
  nop                              #  88    0x7ba91  1      OPC=nop             
  nop                              #  89    0x7ba92  1      OPC=nop             
  nop                              #  90    0x7ba93  1      OPC=nop             
  nop                              #  91    0x7ba94  1      OPC=nop             
  nop                              #  92    0x7ba95  1      OPC=nop             
  nop                              #  93    0x7ba96  1      OPC=nop             
  nop                              #  94    0x7ba97  1      OPC=nop             
  nop                              #  95    0x7ba98  1      OPC=nop             
  nop                              #  96    0x7ba99  1      OPC=nop             
  nop                              #  97    0x7ba9a  1      OPC=nop             
  nop                              #  98    0x7ba9b  1      OPC=nop             
  nop                              #  99    0x7ba9c  1      OPC=nop             
  nop                              #  100   0x7ba9d  1      OPC=nop             
  nop                              #  101   0x7ba9e  1      OPC=nop             
  nop                              #  102   0x7ba9f  1      OPC=nop             
                                                                                
.size _ZNSt16__numpunct_cacheIcED1Ev, .-_ZNSt16__numpunct_cacheIcED1Ev

